#coding: utf-8

module Zinbeijett

  module_function

  def zinbeijett
    one = ARGV[0]
    open(one) do |f|
    while str2 = f.gets
      str = str2.chomp!
      two = ARGV[1]
      three = /#{two}/o
    if three =~ str
      printf('%2d Line : %s',f.lineno,str)
        puts ''
        else
        end	     
    end
    puts ''
        print "Did it read to the last of a page ? ... "
		print f.eof? 
    end
  end
end

one = ARGV[0]

case
  when one.nil?
    print 'Zengine is in Copyright Takayuki Kamiyama,I made in 2013.'
  when one
    Zinbeijett.zinbeijett
  else
    print 'Not other arguments!'
end

__END__
