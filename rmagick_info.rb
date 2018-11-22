require 'RMagick'

# アニメーション GIF が考慮されて画像は配列で読み込まれるので、
# 配列の先頭画像を取得する。
img = Magick::Image.read("taka.jpg").first
# 以下のように取得してもよい。
#img = Magick::ImageList.new("img_1.jpg")

# 画像情報取得
puts "FILENAME  : #{img.filename}"        # ファイル名
puts "FORMAT    : #{img.format}"          # フォーマット
puts "HEIGHT    : #{img.rows} px"         # 高さ
puts "WIDTH     : #{img.columns} px"      # 幅
puts "CLASSTYPE : #{img.class_type}"      # クラスタイプ
puts "DEPTH     : #{img.depth} bits/px"   # 深さ
puts "COLORS    : #{img.number_colors}"   # 色
puts "FILESIZE  : #{img.filesize} bytes"  # ファイルサイズ
puts "RESOLUTION: #{img.x_resolution.to_i}x#{img.y_resolution.to_i} " +
     "pixels/#{img.units == Magick::PixelsPerInchResolution ?
     "inch" : "cm"}"                      # レゾリューション
if img.properties.length > 0              # プロパティ
  puts "PROPERTIES:"
  img.properties do |name,value|
    puts "  #{name} = #{value}"
  end
end