#!/usr/local/bin/python3


from PIL import Image


image = Image.open('img@3x.png')
new_image = image.resize((48, 48))
new_image.save('img@3x.png')

image = Image.open('img@3x.png')
new_image = image.resize((32, 32))
new_image.save('img@2x.png')

image = Image.open('img@3x.png')
new_image = image.resize((16, 16))
new_image.save('img.png')

