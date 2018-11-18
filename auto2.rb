require 'rss'
require 'date'
require 'kconv'

rss = RSS::Parser.parse('http://takkii.hatenablog.com/rss')

rss.items.collect do |scale|

  v = /[1][0-9]/
  w = /[0][0-9]/
  x = /[2][0-4]/
  s = scale.pubDate.strftime '%H'

  print scale.pubDate.strftime '%H'

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
end
end
puts ''
