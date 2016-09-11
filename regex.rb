#str = ["@","@","@","#","@","@","@","@","$","@","#","$","#","$","@","$","$","$","$","$","#","@"]
str = %w[$ @ @ # @ @ # @ @ @ # # @ $ @ # # $ # # # $ @ $ $ $ # $ $ #]

print "@文字は "
print str.count("@")
puts " 個あります"
print "$文字は "
print str.count("$")
puts " 個あります"
print "#文字は "
print str.count("#")
puts " 個あります"
print "合計 "
print str.count("@") + str.count("$") + str.count("#")
puts " 個です"