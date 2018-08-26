#!/usr/bin/env python
from math import pi, sin, cos

radius = 0.25 / 2.0
center_x = 0.0
center_y = 0.0

angles = [n*2*pi/6 for n in range(0, 6)]


def hexagon_coords(theta, r):
    digits = 6
    x = center_x + round(r * cos(theta), digits)
    y = center_y + round(r * sin(theta), digits)
    return (x, y)


for angle in angles:
    coords = hexagon_coords(angle, radius)
    print(coords)



