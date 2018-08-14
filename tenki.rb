# frozen_string_literal: true

require 'net/http'
require 'uri'
require 'json'
require 'time'
require 'date'

puts '

道北
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/01a.xml
稚内 id= 011000 http://weather.livedoor.com/forecast/rss/area/011000.xml
旭川 id= 012010 http://weather.livedoor.com/forecast/rss/area/012010.xml
留萌 id= 012020 http://weather.livedoor.com/forecast/rss/area/012020.xml

道東
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/01c.xml
網走 id= 013010 http://weather.livedoor.com/forecast/rss/area/013010.xml
北見 id= 013020 http://weather.livedoor.com/forecast/rss/area/013020.xml
紋別 id= 013030 http://weather.livedoor.com/forecast/rss/area/013030.xml
根室 id= 014010 http://weather.livedoor.com/forecast/rss/area/014010.xml
釧路 id= 014020 http://weather.livedoor.com/forecast/rss/area/014020.xml
帯広 id= 014030 http://weather.livedoor.com/forecast/rss/area/014030.xml

道南
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/01d.xml
室蘭 id= 015010 http://weather.livedoor.com/forecast/rss/area/015010.xml
浦河 id= 015020 http://weather.livedoor.com/forecast/rss/area/015020.xml

道央
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/01b.xml
札幌 id= 016010 http://weather.livedoor.com/forecast/rss/area/016010.xml
岩見沢 id= 016020 http://weather.livedoor.com/forecast/rss/area/016020.xml
倶知安 id= 016030 http://weather.livedoor.com/forecast/rss/area/016030.xml

道南
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/01d.xml
函館 id= 017010 http://weather.livedoor.com/forecast/rss/area/017010.xml
江差 id= 017020 http://weather.livedoor.com/forecast/rss/area/017020.xml

青森県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/02.xml
青森 id= 020010 http://weather.livedoor.com/forecast/rss/area/020010.xml
むつ id= 020020 http://weather.livedoor.com/forecast/rss/area/020020.xml
八戸 id= 020030 http://weather.livedoor.com/forecast/rss/area/020030.xml

岩手県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/03.xml
盛岡 id= 030010 http://weather.livedoor.com/forecast/rss/area/030010.xml
宮古 id= 030020 http://weather.livedoor.com/forecast/rss/area/030020.xml
大船渡 id= 030030 http://weather.livedoor.com/forecast/rss/area/030030.xml

宮城県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/04.xml
仙台 id= 040010 http://weather.livedoor.com/forecast/rss/area/040010.xml
白石 id= 040020 http://weather.livedoor.com/forecast/rss/area/040020.xml

秋田県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/05.xml
秋田 id= 050010 http://weather.livedoor.com/forecast/rss/area/050010.xml
横手 id= 050020 http://weather.livedoor.com/forecast/rss/area/050020.xml

山形県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/06.xml
山形 id= 060010 http://weather.livedoor.com/forecast/rss/area/060010.xml
米沢 id= 060020 http://weather.livedoor.com/forecast/rss/area/060020.xml
酒田 id= 060030 http://weather.livedoor.com/forecast/rss/area/060030.xml
新庄 id= 060040 http://weather.livedoor.com/forecast/rss/area/060040.xml

福島県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/07.xml
福島 id= 070010 http://weather.livedoor.com/forecast/rss/area/070010.xml
小名浜 id= 070020 http://weather.livedoor.com/forecast/rss/area/070020.xml
若松 id= 070030 http://weather.livedoor.com/forecast/rss/area/070030.xml

茨城県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/08.xml
水戸 id= 080010 http://weather.livedoor.com/forecast/rss/area/080010.xml
土浦 id= 080020 http://weather.livedoor.com/forecast/rss/area/080020.xml

栃木県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/09.xml
宇都宮 id= 090010 http://weather.livedoor.com/forecast/rss/area/090010.xml
大田原 id= 090020 http://weather.livedoor.com/forecast/rss/area/090020.xml

群馬県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/10.xml
前橋 id= 100010 http://weather.livedoor.com/forecast/rss/area/100010.xml
みなかみ id= 100020 http://weather.livedoor.com/forecast/rss/area/100020.xml

埼玉県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/11.xml
さいたま id= 110010 http://weather.livedoor.com/forecast/rss/area/110010.xml
熊谷 id= 110020 http://weather.livedoor.com/forecast/rss/area/110020.xml
秩父 id= 110030 http://weather.livedoor.com/forecast/rss/area/110030.xml

千葉県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/12.xml
千葉 id= 120010 http://weather.livedoor.com/forecast/rss/area/120010.xml
銚子 id= 120020 http://weather.livedoor.com/forecast/rss/area/120020.xml
館山 id= 120030 http://weather.livedoor.com/forecast/rss/area/120030.xml

東京都
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/13.xml
東京 id= 130010 http://weather.livedoor.com/forecast/rss/area/130010.xml
大島 id= 130020 http://weather.livedoor.com/forecast/rss/area/130020.xml
八丈島 id= 130030 http://weather.livedoor.com/forecast/rss/area/130030.xml
父島 id= 130040 http://weather.livedoor.com/forecast/rss/area/130040.xml

神奈川県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/14.xml
横浜 id= 140010 http://weather.livedoor.com/forecast/rss/area/140010.xml
小田原 id= 140020 http://weather.livedoor.com/forecast/rss/area/140020.xml

新潟県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/15.xml
新潟 id= 150010 http://weather.livedoor.com/forecast/rss/area/150010.xml
長岡 id= 150020 http://weather.livedoor.com/forecast/rss/area/150020.xml
高田 id= 150030 http://weather.livedoor.com/forecast/rss/area/150030.xml
相川 id= 150040 http://weather.livedoor.com/forecast/rss/area/150040.xml

富山県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/16.xml
富山 id= 160010 http://weather.livedoor.com/forecast/rss/area/160010.xml
伏木 id= 160020 http://weather.livedoor.com/forecast/rss/area/160020.xml

石川県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/17.xml
金沢 id= 170010 http://weather.livedoor.com/forecast/rss/area/170010.xml
輪島 id= 170020 http://weather.livedoor.com/forecast/rss/area/170020.xml

福井県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/18.xml
福井 id= 180010 http://weather.livedoor.com/forecast/rss/area/180010.xml
敦賀 id= 180020 http://weather.livedoor.com/forecast/rss/area/180020.xml

山梨県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/19.xml
甲府 id= 190010 http://weather.livedoor.com/forecast/rss/area/190010.xml
河口湖 id= 190020 http://weather.livedoor.com/forecast/rss/area/190020.xml

長野県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/20.xml
長野 id= 200010 http://weather.livedoor.com/forecast/rss/area/200010.xml
松本 id= 200020 http://weather.livedoor.com/forecast/rss/area/200020.xml
飯田 id= 200030 http://weather.livedoor.com/forecast/rss/area/200030.xml

岐阜県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/21.xml
岐阜 id= 210010 http://weather.livedoor.com/forecast/rss/area/210010.xml
高山 id= 210020 http://weather.livedoor.com/forecast/rss/area/210020.xml

静岡県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/22.xml
静岡 id= 220010 http://weather.livedoor.com/forecast/rss/area/220010.xml
網代 id= 220020 http://weather.livedoor.com/forecast/rss/area/220020.xml
三島 id= 220030 http://weather.livedoor.com/forecast/rss/area/220030.xml
浜松 id= 220040 http://weather.livedoor.com/forecast/rss/area/220040.xml

愛知県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/23.xml
名古屋 id= 230010 http://weather.livedoor.com/forecast/rss/area/230010.xml
豊橋 id= 230020 http://weather.livedoor.com/forecast/rss/area/230020.xml

三重県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/24.xml
津 id= 240010 http://weather.livedoor.com/forecast/rss/area/240010.xml
尾鷲 id= 240020 http://weather.livedoor.com/forecast/rss/area/240020.xml

滋賀県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/25.xml
大津 id= 250010 http://weather.livedoor.com/forecast/rss/area/250010.xml
彦根 id= 250020 http://weather.livedoor.com/forecast/rss/area/250020.xml

京都府
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/26.xml
京都 id= 260010 http://weather.livedoor.com/forecast/rss/area/260010.xml
舞鶴 id= 260020 http://weather.livedoor.com/forecast/rss/area/260020.xml

大阪府
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/27.xml
大阪 id= 270000 http://weather.livedoor.com/forecast/rss/area/270000.xml

兵庫県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/28.xml
神戸 id= 280010 http://weather.livedoor.com/forecast/rss/area/280010.xml
豊岡 id= 280020 http://weather.livedoor.com/forecast/rss/area/280020.xml

奈良県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/29.xml
奈良 id= 290010 http://weather.livedoor.com/forecast/rss/area/290010.xml
風屋 id= 290020 http://weather.livedoor.com/forecast/rss/area/290020.xml

和歌山県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/30.xml
和歌山 id= 300010 http://weather.livedoor.com/forecast/rss/area/300010.xml
潮岬 id= 300020 http://weather.livedoor.com/forecast/rss/area/300020.xml

鳥取県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/31.xml
鳥取 id= 310010 http://weather.livedoor.com/forecast/rss/area/310010.xml
米子 id= 310020 http://weather.livedoor.com/forecast/rss/area/310020.xml

島根県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/32.xml
松江 id= 320010 http://weather.livedoor.com/forecast/rss/area/320010.xml
浜田 id= 320020 http://weather.livedoor.com/forecast/rss/area/320020.xml
西郷 id= 320030 http://weather.livedoor.com/forecast/rss/area/320030.xml

岡山県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/33.xml
岡山 id= 330010 http://weather.livedoor.com/forecast/rss/area/330010.xml
津山 id= 330020 http://weather.livedoor.com/forecast/rss/area/330020.xml

広島県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/34.xml
広島 id= 340010 http://weather.livedoor.com/forecast/rss/area/340010.xml
庄原 id= 340020 http://weather.livedoor.com/forecast/rss/area/340020.xml

山口県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/35.xml
下関 id= 350010 http://weather.livedoor.com/forecast/rss/area/350010.xml
山口 id= 350020 http://weather.livedoor.com/forecast/rss/area/350020.xml
柳井 id= 350030 http://weather.livedoor.com/forecast/rss/area/350030.xml
萩 id= 350040 http://weather.livedoor.com/forecast/rss/area/350040.xml

徳島県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/36.xml
徳島 id= 360010 http://weather.livedoor.com/forecast/rss/area/360010.xml
日和佐 id= 360020 http://weather.livedoor.com/forecast/rss/area/360020.xml

香川県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/37.xml
高松 id= 370000 http://weather.livedoor.com/forecast/rss/area/370000.xml

愛媛県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/38.xml
松山 id= 380010 http://weather.livedoor.com/forecast/rss/area/380010.xml
新居浜 id= 380020 http://weather.livedoor.com/forecast/rss/area/380020.xml
宇和島 id= 380030 http://weather.livedoor.com/forecast/rss/area/380030.xml

高知県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/39.xml
高知 id= 390010 http://weather.livedoor.com/forecast/rss/area/390010.xml
室戸岬 id= 390020 http://weather.livedoor.com/forecast/rss/area/390020.xml
清水 id= 390030 http://weather.livedoor.com/forecast/rss/area/390030.xml

福岡県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/40.xml
福岡 id= 400010 http://weather.livedoor.com/forecast/rss/area/400010.xml
八幡 id= 400020 http://weather.livedoor.com/forecast/rss/area/400020.xml
飯塚 id= 400030 http://weather.livedoor.com/forecast/rss/area/400030.xml
久留米 id= 400040 http://weather.livedoor.com/forecast/rss/area/400040.xml

佐賀県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/41.xml
佐賀 id= 410010 http://weather.livedoor.com/forecast/rss/area/410010.xml
伊万里 id= 410020 http://weather.livedoor.com/forecast/rss/area/410020.xml

長崎県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/42.xml
長崎 id= 420010 http://weather.livedoor.com/forecast/rss/area/420010.xml
佐世保 id= 420020 http://weather.livedoor.com/forecast/rss/area/420020.xml
厳原 id= 420030 http://weather.livedoor.com/forecast/rss/area/420030.xml
福江 id= 420040 http://weather.livedoor.com/forecast/rss/area/420040.xml

熊本県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/43.xml
熊本 id= 430010 http://weather.livedoor.com/forecast/rss/area/430010.xml
阿蘇乙姫 id= 430020 http://weather.livedoor.com/forecast/rss/area/430020.xml
牛深 id= 430030 http://weather.livedoor.com/forecast/rss/area/430030.xml
人吉 id= 430040 http://weather.livedoor.com/forecast/rss/area/430040.xml

大分県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/44.xml
大分 id= 440010 http://weather.livedoor.com/forecast/rss/area/440010.xml
中津 id= 440020 http://weather.livedoor.com/forecast/rss/area/440020.xml
日田 id= 440030 http://weather.livedoor.com/forecast/rss/area/440030.xml
佐伯 id= 440040 http://weather.livedoor.com/forecast/rss/area/440040.xml

宮崎県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/45.xml
宮崎 id= 450010 http://weather.livedoor.com/forecast/rss/area/450010.xml
延岡 id= 450020 http://weather.livedoor.com/forecast/rss/area/450020.xml
都城 id= 450030 http://weather.livedoor.com/forecast/rss/area/450030.xml
高千穂 id= 450040 http://weather.livedoor.com/forecast/rss/area/450040.xml

鹿児島県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/46.xml
鹿児島 id= 460010 http://weather.livedoor.com/forecast/rss/area/460010.xml
鹿屋 id= 460020 http://weather.livedoor.com/forecast/rss/area/460020.xml
種子島 id= 460030 http://weather.livedoor.com/forecast/rss/area/460030.xml
名瀬 id= 460040 http://weather.livedoor.com/forecast/rss/area/460040.xml

沖縄県
警報・注意報 http://weather.livedoor.com/forecast/rss/warn/47.xml
那覇 id= 471010 http://weather.livedoor.com/forecast/rss/area/471010.xml
名護 id= 471020 http://weather.livedoor.com/forecast/rss/area/471020.xml
久米島 id= 471030 http://weather.livedoor.com/forecast/rss/area/471030.xml
南大東 id= 472000 http://weather.livedoor.com/forecast/rss/area/472000.xml
宮古島 id= 473000 http://weather.livedoor.com/forecast/rss/area/473000.xml
石垣島 id= 474010 http://weather.livedoor.com/forecast/rss/area/474010.xml
与那国島 id= 474020 http://weather.livedoor.com/forecast/rss/area/474020.xml

'

begin
  puts '調べたい地域のIDを入力してください'
  print '>'
  ID = gets.chomp
rescue StandardError => es
  p es
  puts 'エラーです。IDを確認してください！'
end

url = 'http://weather.livedoor.com/forecast/webservice/json/v1?city='+ ID
uri = URI.parse(url)
json = Net::HTTP.get(uri)
result = JSON.parse(json)
today_tel = result['forecasts'][0]['telop']
tomor_tel = result['forecasts'][1]['telop']
min_tem = result['forecasts'][1]['temperature']['min']['celsius']
max_tem = result['forecasts'][1]['temperature']['max']['celsius']
des = result['description']['text']
des1 = result['description']['publicTime']
des2 = DateTime.parse(des1)

# puts result
puts ' 天気予報 '.center(60, '-')
puts ''
puts '今日の天気は、' + today_tel + ' でしょう '
puts '最低気温は、' + min_tem + '℃' + ' でしょう '
puts '最高気温は、' + max_tem + '℃' + ' でしょう '
puts '明日の天気は、' + tomor_tel + ' でしょう '
puts ''
puts ' 天気予報 '.center(60, '-')
puts ''
puts ''
puts ' 天気概況文 '.center(60, '-')
puts
puts des
puts ''
print ' 天気概況文の発表時刻  '
puts des2.strftime('%Y年%m月%d日 %H時%M分%S秒')
puts ''
puts ' 天気概況文 '.center(60, '-')
