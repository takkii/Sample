#coding: sjis

class Bmi
	def tested

		weight = 102 # 体重
		height = 1.75 # 身長
		result = weight / (height * height) # 計算結果
		result.round # 出力と四捨五入
		
	case result.round
	
	when 10..17
		puts "やせてますね"
	
	when 18..24
		puts "標準です"
	
	when 25..29
		puts "肥満度[1]です"
	
	when 30..34
		puts "肥満度[2]です"
	
	when 35..39
		puts "肥満度[3]です"
	
	when 40..50
		puts "肥満度[4]です"
	
	end
	end
end

Bmi.new.tested
