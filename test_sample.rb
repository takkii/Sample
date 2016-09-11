#coding: utf-8

class Sample
  def Sample.red
    print "ハロー "
  end
end

class Sample
  def Sample.rucy
    puts "こんにちは世界!"
  end
end

Sample.red

module Example
module_function
  def rei
    puts "ワールド"
  end
end

Example.rei

Sample.rucy

class Sample2
  def Sample2.ruby
    puts "こんにちは"
  end
end

Sample2.ruby

class Yamato
  def Yamato.ruby
    puts "初出勤を前倒し"
  end
end

Yamato.ruby