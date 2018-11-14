#coding: utf-8

start_time = Time.now

class Sample
  def Sample.ruby
    puts "aaaa"
  end
end

Sample.ruby

class Sample < Sample
def Sample.ruby
puts "Hello, World!"
end
end

def sample2
	puts "Fine Thank you!"
end

Sample.ruby

class Sample3 < Sample
def Sample.ruby
puts "How are you doing?"
end
end

Sample.ruby

Sample.new.sample2

print "This Program move.\n"

end_time = Time.now - start_time
print 'Performance： '
print end_time
puts ' sec.'

puts RUBY_VERSION
