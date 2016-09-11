class Kuwagata

def tree
puts '森の中でクワガタをみつけた'
end
end

Kuwagata.new.tree

module Kabuto
module_function
def home_before
	puts "戌渡でカブトムシの雌をみかけた"
end
end

Kabuto.home_before
