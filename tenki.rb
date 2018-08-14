require 'net/http'
require 'uri'
require 'json'
require 'time'
require 'date'

uri = URI.parse('http://weather.livedoor.com/forecast/webservice/json/v1?city=170010')
json = Net::HTTP.get(uri)
result = JSON.parse(json)
today_tel = result['forecasts'][0]['telop']
tomor_tel = result['forecasts'][1]['telop']
min_tem = result['forecasts'][1]['temperature']['min']['celsius']
max_tem = result['forecasts'][1]['temperature']['max']['celsius']
des = result['description']['text']
des1 = result['description']['publicTime']
des2 = DateTime.parse(des1)

#puts result
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

