# frozen_string_literal: true

require 'active_support/core_ext/Numeric/conversions'

# Sample class
class Sample
  attr_accessor :days, :cost, :hour, :money
  def self.ruby
    # days = 日数、cost = 費用、hour = 時間、money = 時給, koyo = 雇用
    days = 20; cost = 4000; hour = 4; money = 832; koyo = 10
    print '今月の給与、予想額 : ￥'
    kyuyo = (money * hour * days - cost - (days * koyo))
    print kyuyo.to_s(:delimited)
    puts '円'
  end
end

Sample.ruby
