# import sys
# sys.path.append('/Users/tom/Git/cz19-badge/cz19-badge-hardware')

from pcbnew import *

width = 24
height = 8

x_start = 20  # mm
y_start = -150  # mm

x_diff = 7  # mm
y_diff = 7  # mm
# y_diff = 5.62  # mm

def by_reference(module):
    return int(module.GetReference()[1:])

board = GetBoard()
modules = list(board.GetModules())
leds = [module for module in modules if module.GetFPID().GetUniStringLibItemName().__contains__('SK6812')]
leds.sort(key=by_reference)

if len(leds) != width * height:
    print('Warning: number of leds (%d) is not equal to expected number (%d). Exiting.' % (len(leds), width * height))

for y in range(0, height):
    for x in range(0, width):
        index = y * width + x
        leds[index].SetPosition(wxPoint(FromMM(x_start + (x * x_diff)), FromMM(y_start + y( * y_diff))))