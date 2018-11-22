require 'open-uri'

x = "https://github.com/takkii/zinbei2/blob/master/image/taka.jpg"
y = File.basename(URI.parse(x).path)

open(x) do |image|
File.open(y,"wb") do |file|
file.puts image.read
end
end