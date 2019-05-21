## Run this in KiCAD's Tools -> Scripting Console:
# import sys
# sys.path.append('/Users/tom/Git/cz19-badge/cz19-badge-hardware')
# import place_leds_dumb

from pcbnew import *

# In number of pixels
width, height = 32, 8

# All in mm
x_start, y_start = 20, -150
x_diff, y_diff = 6, 6

def by_reference(module):
    return int(module.GetReference()[1:])

board = GetBoard()
modules = list(board.GetModules())
leds = [module for module in modules if module.GetFPID().GetUniStringLibItemName().__contains__('Cree')]
leds.sort(key=by_reference)

if len(leds) != width * height:
    print('Warning: number of leds (%d) is not equal to expected number (%d). Exiting.' % (len(leds), width * height))

for y in range(0, height):
    for x in range(0, width):
        index = y * width + x
        leds[index].SetPosition(wxPoint(FromMM(x_start + (x * x_diff)), FromMM(y_start + (y * y_diff))))