#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# vim: filetype=ruby

module Zinbeijett

module_function

def version
puts '0.4.2'
end

def start
puts ""
puts "Start".center(60,'-')

puts '

== Contributing to zinbeijett

Independent zinbeijett.

** Copycat **

It is the form which made find of zinbeiw smart!

** Function addition **

For the moment, it is not.


> Thank you for reading to the last.

'
puts "Start".center(60,'-')
puts ""

end

def license
puts ""
puts "License".center(60,'-')
puts '

The MIT License
 
Copyright (c) 2013 Takayuki Kamiyama
 
Permission is hereby granted, free of charge, 
to any person obtaining a copy of this software and
associated documentation files (the [Software]),
to deal in the Software without restriction, 
including without limitation the rights to use, copy, modify,
merge, publish, distribute, sublicense,
and/or sell copies of the Software, 
and to permit persons to whom the Software is furnished to do so, 
subject to the following conditions:
 
The above copyright notice and 
this permission notice shall be included 
in all copies or substantial portions of the Software.
 
THE SOFTWARE IS PROVIDED [AS IS],
WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR 
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, 
DAMAGES OR OTHER LIABILITY, 
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, 
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE 
OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

'
puts ""
puts "License".center(60,'-')
puts ""
end

def help
puts ""
puts "Command".center(60,'-')

puts '

[zinbeijett]

-s,start           Start page! 

-v,version         Version information! 

-l,license         License information! 

[zengine]

< how to use >

zengine [ File name ] [ String or regular expression ] 

< Example >

>zengine notojima.txt wajima

If it evaluates whether there is any character string of wajima 
to notojima.txt and is in it, one of them will be outputted! 

[PATH]

< Example >

>C:\Ruby200\lib\ruby\gems\2.0.0\gems\zinbeijett-0.3.4\win32

zinbeijett.exe and zengine.exe is 
can be performed if it lets PATH pass to a win32 folder. 

'
puts "Command".center(60,'-')
puts ""
end

def soft
puts 'Zinbeijett is in Copyright © Takayuki Kamiyama,I made in 2013.'
end
end


v = /\Aversion.rb\z/
ve = /\A[-][v]\z/
h = /\A[-][l]\z/
he = /\Alicense\z/
s = /\Astart\z/
so = /\A[-][s]\z/
co = /\A[-][h]\z/
com = /\Ahelp\z/

one = ARGV[0]

case
when one.nil?
Zinbeijett.soft
when one.match(v)
Zinbeijett.version
when one.match(ve)
Zinbeijett.version
when one.match(he)
Zinbeijett.license
when one.match(h)
Zinbeijett.license
when one.match(s)
Zinbeijett.start
when one.match(so)
Zinbeijett.start
when one.match(co)
Zinbeijett.help
when one.match(com)
Zinbeijett.help
else
puts 'Please choose an option.'
end

__END__
