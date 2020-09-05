#!/usr/bin/env ruby
# -*- coding: sjis -*-
# vim: filetype=ruby

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

puts '
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 ))wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((
((                                                                    ))
 )) ========= ======  ||\\      || ||========   ||=========  ======   ((
((      / /     ||    || \\     || ||        )) ||             ||      ))
 ))    / /      ||    ||  \\    || ||        )) ||             ||     ((
((    / /       ||    ||   \\   || ||========   ||=======      ||      ))
 ))  / /        ||    ||    \\  || ||        )) ||             ||     ((
((  / /         ||    ||     \\ || ||        )) ||             ||      ))
 )) ========= ======  ||      \\|| ||========   ||=========  ======   ((
((                                                                    ))
 ))wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'

class Emerald
  
  attr_accessor :fibonacci, :fizzbizz,:version, :kurage
  
  def version
    print 'Ruby‚Ìƒo[ƒWƒ‡ƒ“î•ñ‚ðo—Í‚µ‚Ü‚·!'
    print RUBY_VERSION
    puts ''
  end
  
def fibonacci
  puts 'ƒtƒBƒ{ƒiƒbƒ`”—ñ‚ðo—Í‚µ‚Ü‚·! '
  puts ''
  lo = 1
  hi = 1
  print lo
  print ' '
    while (hi < 50)
      print hi
      hi = lo + hi
      lo = hi - lo
      print ' '
    end
    puts ''
  end
  
def fizzbizz
  puts 'FizzBizz–â‘è‚Ìo—ÍŒ‹‰Ê‚Å‚·!'
  puts ''
		(1..15).each do |t|
			if t % 15 == 0
			       print 'FizzBizz'
			elsif t % 3 == 0
				print 'Fizz'
			elsif t % 5 == 0
				print 'Bizz'
			else
		 print t
			end
      print ' '
		end
    puts ''
	end
 
 def kurage
    a=rand(15)
    print '`'
    0.upto(a) do |s|
      print '`'
    end
puts 'ƒƒRFœc'
puts ''
end
end

 saikoro = Random.rand(4)
 case saikoro
 when 2 then
    Emerald.new.kurage
 when 1 then
   Emerald.new.fibonacci
 when 0 then
   Emerald.new.fizzbizz
 else
   Emerald.new.version
 end

puts ''
puts '‚Ü‚¸‚ÍAhelp‚Æ“ü—Í‚µ‚Ä‚­‚¾‚³‚¢!ƒRƒ}ƒ“ƒh‚ª‚í‚©‚è‚Ü‚·!'

# search words

begin
  str = %w[sessi kashi exit help].map!(&:freeze).freeze

  once = %w[find delete remove rename makefolder wordcount NumberGame Encode week].map!(&:freeze).freeze

  lucky = %w[loto6 Numbers kuji].map!(&:freeze).freeze

  dark = %w[OneRunner Eval].map!(&:freeze).freeze

  denki = %w[Anpea Volt Rister].map!(&:freeze).freeze

  print '>'

# search words exit!

# Wainting Action code!

  while line = ARGF.gets

    line.chomp!

    case

      when line.match(str[0])
        def seru(b)
          y = (b-32)*5/9
          return y
        end
        puts '‰ØŽ‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢!'.
        print '>'
        f = gets.to_i
        m = seru(f)
        puts "ÛŽ‚ÍA#{m.round}‚Å‚·B"

        print '>'

      when line.match(str[1])
        def seru(b)
          y = (1.8 * b) + 32
          return y
        end
        puts 'ÛŽ‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢I'
        print '>'
        f = gets.to_i
        m = seru(f)
        puts "‰ØŽ‚ÍA#{m.round}‚Å‚·B"

        print '>'

      when line.match(str[2])
      exit!
      when line.match(lucky[0])

        class Loto6

          def sum (a,b,c,d,e,f)
            x = Random.rand(a) + 1
            y = Random.rand(b) + 1
            z = Random.rand(c) + 1
            s = Random.rand(d) + 1
            t = Random.rand(e) + 1
            d = Random.rand(f) + 1
            return x,y,z,s,t,d
          end
        end

        taka = Loto6.new
        n = taka.sum(43,43,43,43,43,43)

        puts 'Loto6‚ÅŽQl‚É‚·‚é”Žš‚ðƒ‰ƒ“ƒ_ƒ€‚Å•\Ž¦‚µ‚Ü‚·I'
        puts ''
        print n
        print ' '
        puts ''
        puts ''
        puts '¦“–‚½‚é‚à”ªŒTA“–‚½‚ç‚Ê‚à”ªŒTBŸ•‰‚ÍŽž‚Ì‰^‚Å‚·B'

        print '>'

      when line.match(lucky[1])
        puts 'ƒiƒ“ƒo[ƒY‚ÅŽQl‚É‚·‚é”Žš‚ðƒ‰ƒ“ƒ_ƒ€‚Å•\Ž¦‚µ‚Ü‚·I'
        puts ''
        class Numbers

          def sum (a,b,c,d)
            x = Random.rand(a)
            y = Random.rand(b)
            z = Random.rand(c)
            s = Random.rand(d)
            return x,y,z,s
          end
        end

        taka = Numbers.new
        p taka.sum(10,10,10,10)
        puts ''
        puts '¦“–‚½‚é‚à”ªŒTA“–‚½‚ç‚Ê‚à”ªŒTBŸ•‰‚ÍŽž‚Ì‰^‚Å‚·B'

        print '>'

      when line.match(lucky[2])
        puts '¡“ú‚Ì‰^¨‚ðè‚Á‚Ä‚Ý‚Ü‚µ‚å‚¤B'
        puts '‘å‹g¨’†‹g¨‹g¨¬‹g¨‹¥¨‘å‹¥'

        a=rand(16)

        case a
          when 0..2
            puts '‘å‹g'
            puts '‚³‚ŸAŠO‚Éo‚ÄŠæ’£‚ë‚¤BŽdŽ–‚ÖGo!'
          when 3..5
            puts '’†‹g'
            puts '‚Ù‚Ç‚Ù‚Ç‚È•’ÊBƒXƒgƒŒƒX‚ÆŒü‚«‡‚¦!'
          when 6..8
            puts '‹g'
            puts '‚¾‚ñ‚¾‚ñ”æ‚ê‚Ä‚«‚½‚ñ‚¾‚ÈB‚ä‚Á‚­‚è‹x‚ß!'
          when 9..11
            puts '¬‹g'
            puts '‚ ‚Ü‚è‚¢‚¢‚±‚Æ‚ª‚È‚¢‚©‚çAƒWƒb‚Æ‚µ‚Ä‚¢‚é‚ÉŒÀ‚éB'
          when 12..14
            puts '‹¥'
            puts 'ƒsƒ“ƒ`‚Ì‚ ‚Æ‚Ìƒ`ƒƒƒ“ƒX“ž—ˆB‚ ‚«‚ç‚ß‚é‚ÈB'
          when 15..16
            puts '‘å‹¥'
            puts '¡“ú‚Í‰½‚©‚Ü‚¸‚¢‹C‚ð‚Â‚¯‚ë!'
          else
            puts '”Žš‚ª‚ ‚Ó‚ê‚Ä‚¢‚Ü‚·I’ˆÓI'
        end
        print '>'

      when line.match(dark[0])

        begin
          puts '
          ƒƒ“ƒ‰ƒCƒi[A‚PsƒR[ƒh‚ÌŠÙ‚Ö‚æ‚¤‚±‚»B‚³‚ŸA‚Í‚¶‚ß‚Ü‚µ‚å‚¤I'
          print '>'
          re = gets.chomp
          puts ''
          eval(re)
          puts ''

        rescue => et
          p et
          print '>'
          puts 'ƒGƒ‰[‚Å‚·B•¶Žš—ñ‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢I'
          puts ''
          retry

        ensure
          puts 'I—¹‚Í exit ‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢I'
        end

        print '>'

      when line.match(denki[0])

        def anpea(a,b)
          x = b / a
          return x
        end

        puts
        puts '’ïR‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢'

        print '>'
        f = gets.to_i

        puts
        puts '“dˆ³‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢'
        print '>'

        g = gets.to_i

        m = anpea(f,g)

        puts
        puts "“d—¬‚Í#{m.round}‚Å‚·B"

        print '>'

      when line.match(denki[1])

        def volt(c,d)
          y = c * d
          return y
        end

        puts
        puts '’ïR‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢'
        print '>'

        h = gets.to_i
        puts
        puts '“d—¬‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢'

        print '>'
        i = gets.to_i

        j = volt(h,i)

        puts
        puts "“dˆ³‚Í#{j.round}‚Å‚·B"

        print '>'

      when line.match(denki[2])

        def rister(k,l)
          z = k / l
          return z
        end

        puts
        puts '“d—¬‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢'
        print '>'

        l = gets.to_i
        puts
        puts '“dˆ³‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢'

        print '>'
        k = gets.to_i

        q = rister(k,l)

        puts
        puts "’ïR‚Í#{q.round}‚Å‚·B"

        print '>'

# It is a help document of zinbeic.

      when line.match(str[3])

        puts 'COMMAND'.center(60,'-')

        puts '
sessi       ‰ØŽ‚©‚çÛŽ‚Ö•ÏŠ·‚µ‚Ü‚·

kashi       ÛŽ‚©‚ç‰ØŽ‚Ö•ÏŠ·‚µ‚Ü‚·

kuji        ¡“ú‚Ì‰^¨‚ð—”‚ðŽg‚Á‚Äè‚¢‚Ü‚·

Numbers     Numbers‚S‚ÌŒó•â‚Æ‚È‚é”Žš‚ð—”‚ðŽg‚Á‚Äo—Í‚µ‚Ü‚·

loto6       Loto‚U‚ÌŒó•â‚Æ‚È‚é”Žš‚ð—”‚ðŽg‚Á‚Äo—Í‚µ‚Ü‚·

OneRunner   ƒƒ“ƒ‰ƒCƒi[‚ÌŠÙ‚ÖˆÄ“à‚µ‚Ü‚·

delete      ƒtƒ@ƒCƒ‹‚ðŽw’è‚µ‚Äíœ‚Å‚«‚Ü‚·

find        ’PŒê‚ð’T‚µ‚Ü‚·

remove      ƒtƒHƒ‹ƒ_‚ðÁ‚µ‚Ü‚·

rename      ƒtƒ@ƒCƒ‹‚Ì–¼‘O‚ð•Ï‚¦‚Ü‚·

makefolder  ƒtƒHƒ‹ƒ_‚ðì¬‚µ‚Ü‚·

wordcount   ‘ÎÛ‚Ìƒtƒ@ƒCƒ‹‘S‘Ì‚ð“‚Å’PŒêƒJƒEƒ“ƒg‚µ‚Ü‚·

NumberGame  ”Žš“–‚ÄƒQ[ƒ€‚Å‚·

Encode      •¶Žš—ñ‚ÌƒGƒ“ƒR[ƒh‚ð•]‰¿‚µ‚Ü‚·

Eval        eval‘°‚ÌŠÙ‚Ö‚æ‚¤‚±‚»A‘«‚µŽZ‚È‚Ç‚ªs‚¦‚Ü‚·

Anpea       ƒI[ƒ€‚Ì–@‘¥‚ðŽg‚¢A“d—¬‚ð’²‚×‚Ü‚·

Volt        ƒI[ƒ€‚Ì–@‘¥‚ðŽg‚¢A“dˆ³‚ð’²‚×‚Ü‚·

Rister      ƒI[ƒ€‚Ì–@‘¥‚ðŽg‚¢A’ïR‚ð’²‚×‚Ü‚·

week        ‘¾—z—ï‚Å“ú•t‚Ì—j“ú‚ð^‚Æ‹U‚Å”»’è‚µ‚Ü‚·

I—¹‚·‚é‚Æ‚«‚ÍAexit‚Æ“ü—Í‚µ‚Ü‚·'

        puts 'COMMAND'.center(60,'-')

        print '>'

# It is a help document of zinbeic exit!

# The command which can be called is only once. @
      when line.match(once[0])

        begin
          print '’T‚µ‚½‚¢•¶Žš—ñ‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢F@'
          re = gets.chomp

        rescue => et
          p et
          puts 'ƒGƒ‰[‚Å‚·B•¶Žš—ñ‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢I'
          retry
        end

        begin
          print '’T‚µ‚½‚¢ƒtƒHƒ‹ƒ_‚ÌƒpƒX‚ðŽw’è‚µ‚Ä‚­‚¾‚³‚¢F@'
          fo = gets.chomp

        rescue => es
          p es
          puts 'ƒGƒ‰[‚Å‚·B•¶Žš—ñ‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢I'
        end

        begin
          Dir.chdir(fo)

        rescue Errno::EEXIST
          Errno::EEXIST
        end

        begin
          print 'ƒtƒ@ƒCƒ‹–¼‚ðŠg’£Žq‚ðŠÜ‚ñ‚Å“ü—Í‚µ‚Ä‚­‚¾‚³‚¢F@'

          filename = gets.chomp
          File.open(filename) do |d|

            puts ' '

            while liner = d.gets
              liner.chomp!
              if liner.match(re)
                printf('%4d s–Ú : %s ',d.lineno,liner)
                print 'F Find!(”­Œ©!)'
                puts ' '
                puts ' '
              else
              end
            end
          end

        rescue => ex
          p ex
          puts 'ƒGƒ‰[‚Å‚·Bƒtƒ@ƒCƒ‹–¼‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢B\‚Ž'
          retry

        ensure
          puts 'I—¹‚Í exit ‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢I'
        end
        print '>'

      when line.match(once[1])

        begin
          print 'Á‚µ‚½‚¢ƒtƒHƒ‹ƒ_‚ÌƒpƒX‚ðŽw’è‚µ‚Ä‚­‚¾‚³‚¢F@'
          mo = gets.chomp

        rescue => es
          p es
          puts 'ƒGƒ‰[‚Å‚·B•¶Žš—ñ‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢I'
        end

        begin
          Dir.chdir(mo)

        rescue Errno::EEXIST
          Errno::EEXIST
        end

        begin
          print 'ƒtƒ@ƒCƒ‹–¼‚ðŠg’£Žq‚ðŠÜ‚ñ‚Å“ü—Í‚µ‚Ä‚­‚¾‚³‚¢F@'

          del = readline.chomp!
          File.delete(del)

          puts 'íœ‚µ‚Ü‚µ‚½B'

        rescue => ex
          p ex
          puts 'ƒGƒ‰[‚Å‚·Bƒtƒ@ƒCƒ‹–¼‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢B\‚Ž'
          retry

        ensure
          puts 'I—¹‚Í exit ‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢I'
        end
        print '>'

      when line.match(once[2])

        begin
          print 'íœ‚µ‚½‚¢ƒtƒHƒ‹ƒ_‚ÌƒpƒX‚ðŽw’è‚µ‚Ä‚­‚¾‚³‚¢F@'
          st = gets.chomp

        rescue => es
          p es
          puts 'ƒGƒ‰[‚Å‚·B•¶Žš—ñ‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢I'
        end

        begin
          Dir.chdir(st)

        rescue Errno::EEXIST
          Errno::EEXIST
        end

        begin
          print 'íœ‚µ‚½‚¢ƒtƒHƒ‹ƒ_–¼‚ðŠg’£Žq‚ðŠÜ‚ñ‚Å“ü—Í‚µ‚Ä‚­‚¾‚³‚¢F@'

          rem = readline.chomp!
          Dir.rmdir(rem)

          puts 'íœ‚µ‚Ü‚µ‚½B'

        rescue => ex
          p ex
          puts 'ƒGƒ‰[‚Å‚·Bƒtƒ@ƒCƒ‹–¼‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢B\‚Ž'
          retry

        ensure
          puts 'I—¹‚Í exit ‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢I'
        end
        print '>'
      when line.match(once[3])

        begin
          print '–¼‘O‚ð•Ï‚¦‚½‚¢ƒtƒHƒ‹ƒ_‚ÌƒpƒX‚ðŽw’è‚µ‚Ä‚­‚¾‚³‚¢F@'
          nem = gets.chomp

        rescue => es
          p es
          puts 'ƒGƒ‰[‚Å‚·B•¶Žš—ñ‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢I'
        end

        begin
          Dir.chdir(nem)

        rescue Errno::EEXIST
          Errno::EEXIST
        end

        begin
          print 'Œ»Ý‚Ìƒtƒ@ƒCƒ‹–¼‚ðŠg’£Žq‚ðŠÜ‚ñ‚Å“ü—Í‚µ‚Ä‚­‚¾‚³‚¢F@'
          re = gets.chomp!

        rescue => ex
          p ex
          puts  'ƒGƒ‰[‚Å‚·Bƒtƒ@ƒCƒ‹–¼‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢B\‚Ž'
          retry
        end

        begin
          print '•ÏX‚·‚éƒtƒ@ƒCƒ‹–¼‚ðŠg’£Žq‚ðŠÜ‚ñ‚Å“ü—Í‚µ‚Ä‚­‚¾‚³‚¢F@'

          no = gets.chomp!

          File.rename(re,no)

          puts '•ÏX‚µ‚Ü‚µ‚½B'

        rescue => ex
          p ex
          puts  'ƒGƒ‰[‚Å‚·Bƒtƒ@ƒCƒ‹–¼‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢B\‚Ž'
          retry

        ensure
          puts 'I—¹‚Í exit ‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢I'
        end

        print '>'
      when line.match(once[4])

        begin
          print 'ì¬‚µ‚½‚¢ƒtƒHƒ‹ƒ_‚ÌƒpƒX‚ðŽw’è‚µ‚Ä‚­‚¾‚³‚¢F@'
          mk = gets.chomp

        rescue => es
          p es
          puts 'ƒGƒ‰[‚Å‚·B•¶Žš—ñ‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢I'
        end

        begin
          Dir.chdir(mk)

        rescue Errno::EEXIST
          Errno::EEXIST
        end

        begin
          print 'ƒtƒHƒ‹ƒ_–¼‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢F@'

          ma = readline.chomp!
          Dir.mkdir(ma)

          puts 'ì¬‚µ‚Ü‚µ‚½B'

        rescue => ex
          p ex
          puts 'ƒGƒ‰[‚Å‚·Bƒtƒ@ƒCƒ‹–¼‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢B\‚Ž'
          retry

        ensure
          puts 'I—¹‚Í exit ‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢I'
        end

        print '>'
      when line.match(once[5])

        begin
          print '’T‚µ‚½‚¢ƒtƒHƒ‹ƒ_‚ÌƒpƒX‚ðŽw’è‚µ‚Ä‚­‚¾‚³‚¢F@'
          mik = gets.chomp

        rescue => es
          p es
          puts 'ƒGƒ‰[‚Å‚·B•¶Žš—ñ‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢I'
        end

        begin
          Dir.chdir(mik)

        rescue Errno::EEXIST
          Errno::EEXIST
        end

        begin
          print '”‚¦‚½‚¢ƒtƒ@ƒCƒ‹–¼‚ðŠg’£Žq‚ðŠÜ‚ñ‚Å“ü—Í‚µ‚Ä‚­‚¾‚³‚¢F@'

          count = Hash.new(0)

#•¶Žš—ñ‚ÌoŒ»•p“x‚ð’²‚×‚éB
          def char_stat(str)
            table = Hash.new(0)
            str.scan(/./m){|ch|
              table[ch] += 1
            }
            table.to_a.sort_by{|_,con| -con}
          end

#’PŒê‚ÌWŒv
          filename = gets.chomp
          File.open(filename) do |d|
            while line == d.gets
              wa = line.split
              wa.each do |w|
                count[w] += 1
              end
            end

#Œ‹‰Ê‚Ìo—Í

            count.sort do |a, b|
              a[1] <=> b[1]
            end.each do |web, con|

              print "#{web.inspect}: "
              print "#{con % 100 / wa.length}%"
              puts ' '
              puts ' '
            end
          end

        rescue => ex
          p ex
          puts 'ƒGƒ‰[‚Å‚·Bƒtƒ@ƒCƒ‹–¼‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢B\‚Ž'
          retry

        ensure
          puts 'I—¹‚Í exit ‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢I'
        end

        print '>'

      when line.match(once[6])

        x = Random.rand(100) + 1
        numb = 0
        numb = numb + 1

        puts '‰½‰ñ‚Ü‚ÅANumberGame‚ÅŒJ‚è•Ô‚·‚©Žw’è‚µ‚Ä‚­‚¾‚³‚¢'
        print '>'
        num = gets.chomp.to_i
        puts "#{num}‰ñAŒJ‚è•Ô‚·‚Ü‚Å‚É“–‚Ä‚Ä‚­‚¾‚³‚¢"
        puts
        puts '1~100‚Ü‚Å‚Ì”Žš‚ð‚¢‚ê‚Ä‚­‚¾‚³‚¢NumberGameƒXƒ^[ƒgI'
        print '>'

        num.times do |z|
          begin
            i_num = gets.chomp.to_i
            if i_num < z
              puts 'ƒRƒ“ƒsƒ…[ƒ^‚Ì‘I‚ñ‚¾”Žš‚Ì•û‚ª‘å‚«‚¢‚½‚ß‘å‚«‚¢”Žš‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢'
              print '>'
              numb = numb + 1
            elsif i_num > z
              puts 'ƒRƒ“ƒsƒ…[ƒ^‚Ì‘I‚ñ‚¾”Žš‚Ì•û‚ª¬‚³‚¢‚½‚ß¬‚³‚¢”Žš‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢'
              print '>'
              numb = numb + 1
            else i_num == x
            puts
            puts '‚¨‚ß‚Å‚Æ‚¤‚²‚´‚¢‚Ü‚·A³‰ð‚Å‚·'
            puts
            puts "#{numb}‰ñ‚Å³‰ð‚µ‚Ü‚µ‚½"
            puts
            break
            end
            if i == (num - 1)
              puts
              puts '³‰ð‚Í' + x.to_s + '‚Å‚µ‚½'
              puts
              puts 'Žc”OA‚à‚¤ˆê“xƒ`ƒƒƒŒƒ“ƒWI'
              puts
            end
          rescue => ex
            p ex
            puts 'ƒGƒ‰[‚Å‚·A”Žš‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢\‚Ž'
            retry
          end
        end

        puts '‚¨”æ‚ê‚³‚Ü‚Å‚µ‚½B'
        print '>'
      when line.match(once[7])
        puts

        class Enco

          begin
            puts '•¶Žš—ñ‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢'
            print '>'
            filename = gets.chomp
          rescue => ee
            p ee
            puts 'ƒGƒ‰[‚Å‚·B•¶Žš—ñ‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢I'
          end

          puts ''
          puts '•ÏX‘O‚ÌƒGƒ“ƒR[ƒh‚ðŽw’è‚µ‚Ä‚­‚¾‚³‚¢'
          puts 'ISO-2022-JP,SJIS,eucJP,UTF-8@‚ªŒó•â‚Å‚·B'
          print '>'
          befenco = gets.chomp

          begin
            puts ''
            puts 'ƒGƒ“ƒR[ƒh‚ðŽw’è‚µ‚Ä‚­‚¾‚³‚¢'
            puts 'ISO-2022-JP,SJIS,eucJP,UTF-8@‚ªŒó•â‚Å‚·B'
            print '>'
            aftenco = gets.chomp
            puts

          rescue => ed
            p ed
            puts 'ƒGƒ‰[‚Å‚·BƒGƒ“ƒR[ƒfƒBƒ“ƒO‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢I'
          end

          ut = Encoding::Converter.new(befenco, aftenco)
          p ut.convert(filename)
          ut.finish.dump
          puts

        ensure
          puts 'I—¹‚Í exit ‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢I'
          puts
        end
        print '>'
      when line.match(dark[1])
        begin
          puts 'eval‘°‚ÌŠÙ‚Ö‚æ‚¤‚±‚»I
ŠÈ’P‚È•¶Žš—ñ‚ð•]‰¿‚µ‚Ä‚­‚¾‚³‚¢'
          print '>'
          re = gets.chomp
          puts ''
          p  eval(re)
          puts ''

        rescue => et
          p et
          print '>'
          puts 'ƒGƒ‰[‚Å‚·B•¶Žš—ñ‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢I'
          puts ''
          retry

        ensure
          puts 'I—¹‚Í exit ‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢I'
        end
        print '>'

      when line.match(once[8])
        puts ''
        puts '“ú•t‚Ì—j“ú‚ðtrue,false‚Å”»’è‚µ‚Ü‚·'
        puts '”¼Šp”Žš‚Å“ü—Í‚µ‚Ä‚­‚¾‚³‚¢'
        puts '‚»‚ê‚Å‚ÍAƒXƒ^[ƒgI'
        puts ''

        begin
          puts '’²‚×‚½‚¢”N‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢'
          print '>'
          nen = gets.chomp.to_i
        rescue => ee
          p ee
          puts 'ƒGƒ‰[‚Å‚·B”Žš‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢I'
        end

        puts ''

        begin
          puts '’²‚×‚½‚¢ŒŽ‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢'
          print '>'
          mon = gets.chomp.to_i
        rescue => ey
          p ey
          puts 'ƒGƒ‰[‚Å‚·B”Žš‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢I'
        end

        puts ''

        begin
          puts '’²‚×‚½‚¢“ú‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢'
          print '>'
          days = gets.chomp.to_i
        rescue => ex
          p ex
          puts 'ƒGƒ‰[‚Å‚·B”Žš‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢I'
        end

        puts ''

        t = Time.local(nen, mon, days)

        print'“ú—j“ú‚Å‚·‚©HF'
        puts  t.sunday?
        print 'ŒŽ—j“ú‚Å‚·‚©HF'
        puts t.monday?
        print  '‰Î—j“ú‚Å‚·‚©HF'
        puts  t.tuesday?
        print '…—j“ú‚Å‚·‚©HF'
        puts  t.wednesday?
        print '–Ø—j“ú‚Å‚·‚©HF'
        puts  t.thursday?
        print '‹à—j“ú‚Å‚·‚©HF'
        puts  t.friday?
        print  '“y—j“ú‚Å‚·‚©HF'
        puts  t.saturday?

        puts

        print '>'
# The command which can be called is only once.

      else
        puts "Can't Enter this Words. Please input help"
        print '>'
    end
  end
# Wainting Action Code exit!

# Exception throw!
rescue => ex
  p ex
  puts 'ƒGƒ‰[‚Å‚·B•¶Žš—ñ‚ðŠm”F‚µ‚Ä‚­‚¾‚³‚¢I'
  retry
  print '>'


# Ruby ensure is Java Exception of finally.
ensure
  puts 'I—¹‚Í exit ‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢I'
end

__END__

