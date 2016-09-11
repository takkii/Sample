#  Copyright © 2016 Takayuki Kamiyama

class Fun
  def Fun.v5
    puts "ハローワールド"
  end
  def miku
    puts "みっくみくにしてやんよ"
  end
end

Fun.v5

Fun.new.miku

#機能追加


module Tas
  def tic
    puts "ファンタスティック"
  end
  module_function :tic
end

Tas.tic

class Rev < Fun
  def miku
    puts "ねぎはないけど、あるとうれしいな"
  end
end

Rev.new.miku

ary = [1,2,3]
print ary.pop
print " "
print ary.shift