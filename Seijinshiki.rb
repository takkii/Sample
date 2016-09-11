# coding: utf-8
puts "Ruby Version is : " + RUBY_VERSION + "."
puts 

class Shakaijin

def Shakaijin.nakama
a = Array.new
a[27] = 2016

b = Hash.new
b["January"] = 1
b["Anniversary"] = 10
b["ishikawa"] = "石川県"
print "#{b["ishikawa"]}は"
puts "#{a[27]}/#{b["January"]}/#{b["Anniversary"]}が成人式のところもある"

end
end

Shakaijin.nakama

puts ""

class Otona
  def Otona.men
    puts "成人式、新社会人仲間入りおめでとう"
  end
end

Otona.men
