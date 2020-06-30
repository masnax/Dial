#!/usr/local/bin/python3


from PIL import Image


image = Image.open('icon_512x512@2x.png')
new_image = image.resize((512, 512))
new_image.save('icon_512x512.png')

image = Image.open('icon_512x512@2x.png')
new_image = image.resize((512, 512))
new_image.save('icon_256x256@2x.png')

image = Image.open('icon_512x512@2x.png')
new_image = image.resize((256, 256))
new_image.save('icon_256x256.png')

image = Image.open('icon_512x512@2x.png')
new_image = image.resize((256, 256))
new_image.save('icon_128x128@2x.png')

image = Image.open('icon_512x512@2x.png')
new_image = image.resize((128, 128))
new_image.save('icon_128x128.png')

image = Image.open('icon_512x512@2x.png')
new_image = image.resize((64, 64))
new_image.save('icon_32x32@2x.png')

image = Image.open('icon_512x512@2x.png')
new_image = image.resize((32, 32))
new_image.save('icon_32x32.png')

image = Image.open('icon_512x512@2x.png')
new_image = image.resize((32, 32))
new_image.save('icon_16x16@2x.png')

image = Image.open('icon_512x512@2x.png')
new_image = image.resize((16, 16))
new_image.save('icon_16x16.png')

