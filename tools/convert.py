#!/usr/bin/python

import sys
from PIL import Image
import argparse

parser = argparse.ArgumentParser(description='Convert animated or static images to CampZone2019 badge code')

parser.add_argument('image', help='The path to an image to read from (e.g. .gif, .jpg, .png)')
parser.add_argument('--start_x', type=int, default=0, help='The X offset in the image to start reading from')
parser.add_argument('--start_y', type=int, default=0, help='The Y offset in the image to start reading from')
parser.add_argument('--length_x', type=int, default=32, help='The width to read from the image, starting at start_x')
parser.add_argument('--length_y', type=int, default=8, help='The height to read from the image, starting at start_y')
parser.add_argument('--start_at_frame', type=int, default=0, help='The frame to start from, if the image is animated')
parser.add_argument('--lim_frames', type=int, default=16, help='The number of frames to parse, if the image is animated')
parser.add_argument('--skip_frames', type=int, default=1, help='The number of frames to parse, if the image is animated')
parser.add_argument('--is_icon', type=bool, default=False, help='Set to "true" to output rgb.image() instead of rgb.gif()')
args = parser.parse_args()

start_x = args.start_x
start_y = args.start_y
length_x = args.length_x
length_y = args.length_y
start_at_frame = args.start_at_frame
lim_frames = args.lim_frames
skip_frames = args.skip_frames
is_icon = args.is_icon

frames = []
image = Image.open(sys.argv[1])
n_frames, width, height = image.n_frames if hasattr(image, 'n_frames') else 1, image.width, image.height

used_frames = min((n_frames - start_at_frame) / skip_frames, lim_frames)
used_width = min(length_x, image.width)
used_height = min(length_y, image.height)

for frame_no in range(start_at_frame, start_at_frame + used_frames):
    image.seek(frame_no)
    frame = list(image.convert('RGBA').getdata())
    cut_frame = []
    for y in range(start_y, start_y + used_height):
        for x in range(start_x, start_x + used_width):
            cut_frame.append(frame[x + width * y])

    frames.append(cut_frame)

if is_icon:
    print('icon = ([0x' +
          ', 0x'.join([', 0x'.join([format(r << 24 | g << 16 | b << 8 | a, '08x') for r, g, b, a in frame]) for frame in
                       frames]) +
          '], %d)' % used_frames)
else:
    print('rgb.gif([0x' +
          ', 0x'.join([', 0x'.join([format(r << 24 | g << 16 | b << 8 | a, '08x') for r, g, b, a in frame]) for frame in
                       frames]) +
          '], %d, %d, %d, %d, %d)' % (0, 0, used_width, used_height, used_frames))
