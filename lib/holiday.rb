require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies.push(supply)
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  return holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, tradition|
      array_holiday = holiday.to_s.split("_").collect { |word| word.capitalize }
      string_holiday = array_holiday.join(" ")
      puts "  #{string_holiday}: #{tradition.join(', ')}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_hols = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, tradition|
      if tradition.include?("BBQ")
        bbq_hols.push(holiday)
      end
    end
  end
  bbq_hols
end