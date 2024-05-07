from rembg import remove
from PIL import Image

# Imege_Demo
QQZ_Demo = Image.open("Imane_Demo.jpg")
UZ_Demo = remove(QQZ_Demo)
UZ_Demo2 = UZ_Demo.convert("RGB")
UZ_Demo2.save("m.jpg", quality=100, optimize=True)
image_Demo = Image.open("m.jpg")
image = image_Demo.convert("RGB")
image.save("Demo.jpg", "JPEG")


image_Size_Demo = Image.open("Demo.jpg")
image_Resize_Demo = image_Size_Demo.resize((50,180))
image_Resize_Demo.save("Demo_ReSize.jpg")



# Image
QQZ = Image.open("ImageBack.jpg")
UZ = remove(QQZ)
UZ2 = UZ.convert("RGB")
UZ2.save("m.jpg", quality=100, optimize=True)
image = Image.open("m.jpg")
image = image.convert("RGB")
image.save("ImageOnCut.jpg", "JPEG")



image_Size = Image.open("ImageOnCut.jpg")
image_Resize = image_Size.resize((50,180))
image_Resize.save("ReSize.jpg")