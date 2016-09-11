class Sample
	def Sample.sampler
		puts "今年もありがとう、来年もよろしく"
	end
end

Sample.sampler

module Sample2
	
	module_function
	
	def sampler
		puts "来年の抱負はなんにしよう！"
	end
end

Sample2.sampler

class Store
	
	attr_accessor :work,:rank, :star
	
	def twenty
		print "仕事に不満があるとしたら..."
		print "夜勤のない普通の仕事がしたい\n"
	end
end

Store.new.twenty

u = Store.new
u.work = "現在のランク"
u.rank = "初級"
u.star = "☆"

puts "#{u.work}: #{u.rank} :#{u.star}"
