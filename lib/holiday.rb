require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, items|
      items.push(supply)
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  new_array = []
  holiday_hash[:winter].each do |holiday, supplies|
    supplies.each do |items|
      new_array.push(items)
    end
  end
  return new_array
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    variable = season.to_s.capitalize!
    puts variable + ":"
      holidays.each do |holiday, items|
        string = holiday.to_s.gsub("_"," ")
        array = string.split
        holiday_array = array.map do |element|
                            element.capitalize!
                        end.join(" ")
        new_array = items.join(", ")
        puts "  #{holiday_array}: #{new_array}" 
     
    #new_array.push(holiday.to_s)
      #holiday.each do |supplies, items|
        #items.to_s
    end
  end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  new_array = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      supplies.each do |item|
      if item == "BBQ"
        new_array.push(holiday)
      end
      end
    end
  end
  return new_array
end

 # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"





