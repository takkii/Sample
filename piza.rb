class Pikiji

def Pikiji.kura

puts "ピザって10回言って"

10.times do |piza|
  print piza + 1
  print " "
  print "ピザ"
  print  " "
end

puts ""

puts "じゃあここは？"
puts  "わからない。どうやらRubyの世界のようだ...そのバージョンは " + RUBY_VERSION + " だそうだ..."

end
end

Pikiji.kura

#テスト