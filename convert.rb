require 'pp'

open("ruby_complete","w+") do |fe|
open("html.txt") do |f|
  while (name = f.readlines)
    name.sort!
    str = name.join(', ')
    p str.chomp!
    name.each do |n|
      fe.print n
    end
    exit!
 end
end
end