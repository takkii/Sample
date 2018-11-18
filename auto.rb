require 'rss'
require 'date'
require 'kconv'

#date = Time.new.strftime('現在時刻 ： %Y年%m月%d日 %H時%M分')

rss = RSS::Parser.parse('http://takkii.hatenablog.com/rss')

rss.items.collect do |scale|

  #puts scale.pubDate.strftime '投稿時刻 ： %Y年%m月%d日 %H時%M分'
  print scale.pubDate.strftime '%H'.toutf8
  print ' '

end
puts ''

__END__
