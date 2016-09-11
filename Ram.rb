# coding: utf-8

class Sample
def Sample.ruby
puts "こんにちは"
end
def sample2
	puts "さようなら！"
end
end

Sample.ruby

Sample.new.sample2

puts RUBY_VERSION

class Sample2
def Sample2.ruby
puts "こんにちワンダイナミック！"
end
end

Sample2.ruby

module San
def rubyist
puts "ひさびさ"
end
module_function :rubyist
end

San.rubyist
