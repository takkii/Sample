#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# vim: filetype=ruby

require 'java'
import 'java.lang.System'

class Raiu
  def rain
    System.out.println("JRubyでmojiを実行してください！")
  end
end

Raiu.new.rain

print '>'

begin
  kasa = %w[unbre].map!(&:freeze).freeze
  jisho = %w[moji exit].map!(&:freeze).freeze

  while line = ARGF.gets

    line.chomp!

    case

when line.match(kasa[0])
require 'java'
import 'java.lang.System'

class Hello
  def Hello.world
    puts ("JRubyのRubyバージョンは : " + RUBY_VERSION + " です。")
    System.out.println("こんにちは、Javaの世界よ！")
  end
end

Hello.world
print '>'
  when line.match(jisho[1])
      exit!

  when line.match(jisho[0])

  puts 'COMMAND'.center(60,'-')

  puts '

hello       JRubyでハローワールド

終了はexitを入力！
'


  puts 'COMMAND'.center(60,'-')

  print '>'

 else
     puts "Can't Enter this Words. Please input help"
     print '>'
  end
end

# Wainting Action Code exit!

# Exception throw!
rescue => ex
p ex
puts 'エラーです。文字列を確認してください！'
retry
print '>'


# Ruby ensure is Java Exception of finally.
ensure
puts '終了は exit を入力してください！'
end

__END__
