require 'RMagick'
include Magick

image = Magick::ImageList.new("octocat.png")

image2 = image.wave(amplitude=10.0, wavelength=100.0)

image2.write("CatTera.png")

puts
print "画像の幅 : "
puts image.columns
puts  
print "画像の高さ : "
puts image.rows
puts
# ピクセル情報の取得
puts "ピクセル情報の取得"
pixels = image.get_pixels(0, 0, image.columns, image.rows)
puts
print " 赤 : "
puts pixels[0].red
puts
print " 緑 : "
puts pixels[0].green
puts
print " 青 : "
puts pixels[0].blue
puts
print " [色相, 彩度, 明度, 透明度] : "
print pixels[0].to_hsla
puts