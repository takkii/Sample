class Example
  def testing
    puts "さぁ、始めよう"
  end
end

Example.new.testing

class Rubitra
  def nyan
    puts "モジュール化はこれでOK！"
  end
end

Rubitra.new.nyan

class NewRuby
	def NewRuby.dein
		puts "deinで新しくなったVim"
	end
end

NewRuby.dein

class SampleRuby
	def SampleRuby.vim
		puts "表示にエラーが流れない"
	end
end

SampleRuby.vim

class VimRuby
	def VimRuby.dein
		puts "ハロー"
	end
end

VimRuby.dein

puts RUBY_VERSION

class Vi < VimRuby
	def VimRuby.dein
		puts "グッバイ"
	end
end

VimRuby.dein

class VimVim
	def VimVim.dein
		puts "Fine think you."
	end
end

VimVim.dein

class Vim
	def ruby
		puts "いえす"
	end
end

Vim.new.ruby


class Ruby
	def vim
		puts "のー"
	end
end

Ruby.new.vim

ary = [1,2,3,4,5]
print ary.pop
print " "
print ary.shift
print " "
print ary
print " "

class Bmi
	def tested
		weight = 102
		height = 1.75
		result = weight / (height * height)
		puts result.round
	end
end

Bmi.new.tested

class Bmi ; def tested ; weight = 102 ; height = 1.75 ; result = weight / (height * height) ; case result.round ; when 10..17 ; puts "やせてますね" ; when 18..24 ; puts "標準です" ; when 25..29 ; puts "肥満度[1]です" ; when 30..39 ; puts "肥満度[2]です" ; when 35..39 ; puts "肥満度[3]です" ; when 40..50 ; puts "肥満度[4]です" ; end ; end ; end ; Bmi.new.tested
