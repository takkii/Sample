#coding: cp932

start_time = Time.now

class Sample

def Sample.ruby
puts "おはようございます"
end

def sample2
	puts "さようなら。"
end
end

Sample.ruby

class Sample3 < Sample
def Sample.ruby
puts "こんにちワンダイナミック！"
end
end

Sample.ruby

Sample.new.sample2

print "さようなライオン\n"

end_time = Time.now - start_time
print 'Performance： '
print end_time
puts ' sec.'
