require 'rss'
require 'date'
require 'kconv'

#date = Time.new.strftime('現在時刻 ： %Y年%m月%d日 %H時%M分')

rss = RSS::Parser.parse('http://blog.takkii.org/rss')

rss.items.collect do |scale|

  #puts scale.pubDate.strftime '投稿時刻 ： %Y年%m月%d日 %H時%M分'
  #scale.pubDate.strftime '%H'

  v = /[1][0-9]/
  w = /[0][0-9]/
  x = /[2][0-4]/
  s = scale.pubDate.strftime '%H'

  case
  when s.match(v)
  print '#'
  print ' '
  when s.match(w)
  print '$'
  print ' '
  when s.match(x)
  print '@'
  print ' '
  #print ' '
  #puts scale.title
  #puts scale.link
  #puts scale.description
  #print ' '
end
end
puts ''
__END__
