# import sys
# sys.path.append('/Users/tom/Git/cz19-badge/cz19-badge')

from pcbnew import *

width = 16
height = 8

x_diff = 7  # mm
y_diff = 7  # mm
# y_diff = 5.62  # mm

board = GetBoard()
modules = list(board.GetModules())
leds = [module for module in modules if module.GetFPID().GetUniStringLibItemName().__contains__('SK6812')]

if len(leds) != width * height:
    print('Warning: number of leds (%d) is not equal to expected number (%d). Exiting.' % (len(leds), width * height))

for y in range(0, height):
    for x in range(0, width):
        index = y * width + x
        leds[index].SetPosition(wxPoint(FromMM(x * x_diff), FromMM(y * y_diff)))