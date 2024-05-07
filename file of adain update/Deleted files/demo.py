import os
import subprocess
from rembg import remove
import rembg
from PIL import Image
from pywavefront import Wavefront
import numpy as np
import cv2

QQZ = Image.open("ImameBack.png")
UZ = remove(QQZ)
UZ.save("m.png")
imageFile = "m.png"

image = Image.open(imageFile)

new_image = image.resize((60,180))

new_image_file = "new_image_file2.png"

new_image.save(new_image_file)
