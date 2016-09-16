require 'RMagick'
include Magick

image = Magick::ImageList.new("octopass.png")

image2 = image.wave(amplitude=10.0, wavelength=100.0)

md = Magick::Draw.new

md.annotate(image2,0,0,0,0,"ushio(cat) is octopass!") do

	md.gravity = Magick::WestGravity

	md.pointsize = 30
	md.fill = "blue"
	md.stroke = "white"
end

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
