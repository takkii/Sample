#require 'java'
# encoding: UTF-8

class Sample
  def Sample.juke
    puts "こんにちは、世界！"
  end
end

Sample.juke

module Saikoro
  def dice
    puts "そろそろ行くか"
  end
  module_function :dice
end

Saikoro.dice