require 'java'
import 'java.lang.System'

class Hello
  def Hello.world
    puts ("JRubyのRubyバージョンは : " + RUBY_VERSION + " です。")
    System.out.println("こんにちは、Javaの世界よ！")
  end
end


Hello.world
