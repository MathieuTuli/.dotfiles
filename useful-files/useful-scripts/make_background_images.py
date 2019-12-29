#!/usr/bin/env python3
from argparse import ArgumentParser
import os

import numpy as np
import cv2


parser = ArgumentParser(description=__doc__)
parser.add_argument('--image', type=str, required=True)
parser.add_argument('--dest', type=str, default='~/Pictures/')
parser.add_argument('--top', type=int, required=False)
parser.add_argument('--left', type=int, required=False)
parser.add_argument('--bottom', type=int, required=False)
parser.add_argument('--right', type=int, required=False)
parser.add_argument('--color', nargs="+", type=int, required=True)
parser.add_argument('--width', type=int, required=False)
parser.add_argument('--height', type=int, required=False)

args = parser.parse_args()
if __name__ == "__main__":
    if args.image == "mono":
        image = np.zeros((args.height, args.width, 3), np.uint8)
        color = tuple(reversed(args.color))
        image[:] = color
        destination = str(os.path.join(os.path.expanduser(args.dest),
                                       "mono.jpg"))
        cv2.imwrite(destination, image)
    else:
        img = cv2.imread(args.image)
        top = args.top
        bottom = args.bottom
        left = args.left
        right = args.right
        if len(args.color) != 3:
            raise ValueError("--color must be three integers")
        border_img = cv2.copyMakeBorder(img, top, bottom, left, right,
                                        cv2.BORDER_CONSTANT, None,
                                        (args.color[0],
                                         args.color[1],
                                         args.color[2]))
        image_file_name = args.image.split('/')[-1]
        cv2.imwrite('/home/mat/Pictures/image.jpg', border_img)
        print("Success")
