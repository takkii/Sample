# frozen_string_literal: true

require 'RMagick'
include Magick

module CatTower
  def col
    image = Magick::ImageList.new('CatTera.png')
    puts
    print '画像の幅 : '
    puts image.columns
    puts
    print '画像の高さ : '
    puts image.rows
    puts
  end

  def pix
    image = Magick::ImageList.new('CatTera.png')
    puts 'ピクセル情報の取得'
    pixels = image.get_pixels(0, 0, image.columns, image.rows)
    puts
    print ' 赤 : '
    puts pixels[0].red
    puts
    print ' 緑 : '
    puts pixels[0].green
    puts
    print ' 青 : '
    puts pixels[0].blue
    puts
    print ' [色相, 彩度, 明度, 透明度] : '
    print pixels[0].to_hsla
    puts
  end
  module_function :col, :pix
end

CatTower.col
CatTower.pix
