# frozen_string_literal: true

require 'rmagick'

# rmagick
class Ushio
  include Magick
  def self.cat
    image = Magick::ImageList.new('CatTera.png')
    image2 = image.wave(amplitude = 10.0, wavelength = 100.0)
    md = Magick::Draw.new
    md.annotate(image2, 0, 0, 0, 0, 'MyCat name is Usio.') do
      md.gravity = Magick::NorthWestGravity
      md.pointsize = 50
      md.fill = 'green'
      md.stroke = 'blue'
    end
    image2.write('CatTera.png')
  end
end

Ushio.cat
