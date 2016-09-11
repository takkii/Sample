class Sample
def Sample.ruby
puts "ハローニューワールド"
end
end

Sample.ruby

module Sampler
def simple
puts "終わりのないセラフ"
end
module_function :simple
end

Sampler.simple

class Example
	def problem
		puts "ハローワールド"
	end
end

Example.new.problem
