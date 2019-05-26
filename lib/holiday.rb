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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] = supply
  holiday_hash[:winter][:new_years] = supply
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}

  # code here
  holiday_hash
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  supplies_needed = []
  
  holiday_hash.each do |season, events|
    if season == :winter
      events.each do |holidays, supplies|
        supplies.each do |supply|
         supplies_needed.push(supply)
       end
      end
    end
  end
  
  supplies_needed
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, events|
      puts "#{season.to_s.capitalize!}:"
      events.each do |holiday, supplies|
        split_holiday_name = holiday.to_s.split("_")
        split_holiday_name.each do |word|
          word.capitalize!
        end  
        formatted_name = split_holiday_name.join(" ")
        formatted_supplies = supplies.join(", ")
        #output_string = split_holiday_name + supplies
       puts "  #{formatted_name}: #{formatted_supplies}"
        #puts output_string
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
  bbq_holidays = []
  holiday_hash.each do |season, events|
    events.each do |holiday, supplies|
      supplies.each do |supply|
        if supply == "BBQ"
          bbq_holidays.push(holiday)
        end
      end
      
    end
    
  end
  bbq_holidays
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end






