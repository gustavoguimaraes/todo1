# Apple Picker

## Instructions

# Create a method, `apple_picker`, that will pick all the apples out of an array. Implement this only using `each`.

# ```ruby
# apple_picker(["apple", "orange", "apple"]) #=> ["apple", "apple"]
# ```

apple_picker = ["apple", "orange", "apple"]
only_apples = []

apple_picker.each do |fruit|
  if fruit == "apple"
    only_apples << fruit
  end
end

only_apples


# # ## Challenge
# # Implement it with `collect` and then implement it with `select`. Write a sentence about how `select` differs from `collect`.

# .select returns only the values that are true 
apple_picker.select do |fruit|
 fruit == "apple"
end


# .collect returns the result of the iteration in an array.
apple_picker.collect do |fruit|
  if fruit == "apple"
    only_apples << fruit
  end
end


# # Holiday Suppliers

# You have a bunch of decorations for various holidays organized by season.

# ```ruby

holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :forth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

# ```
# ## Questions

# 1. How would you access the second supply for the forth_of_july?
# ex: `holiday_supplies[:spring][:memorial_day][0]`
holiday_supplies[:summer][:forth_of_july][1]

# 2. Add a supply to a Winter holiday.
holiday_supplies[:winter][:christmas] << "Father Xmas"


# 3. Add a supply to memorial day.
holiday_supplies[:spring][:memorial_day] << "Grapes"

# 4. Add a new holiday to any season with supplies.
holiday_supplies[:spring][:Easter] = ["Eggs", "Bunnies"]


# 5. Write a method to collect all Winter supplies from all the winter holidays.
# ex: `winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]`

def winter_suppliers(holiday_supplies)
  holiday_supplies[:winter].collect do | holiday, supply |
    all_supplies = []
    all_supplies << supply
    puts all_supplies
  end
end

winter_suppliers(holiday_supplies)
puts
# 6. Write a loop to list out all the supplies you have for each holiday and the season.

# Output:
# ```
# Winter:
#   Christmas: Lights and Wreath
#   New Years: Party Hats
# ```
def get_supplies(holiday_supplies)
  holiday_supplies.each do | season, holiday |
    holiday.each do | name_holiday, supplies |
      new_hash = {}
     new_hash[name_holiday] = supplies
     puts new_hash
   end
 end
end

get_supplies(holiday_supplies)
puts
# 7. Write a method to collect all holidays with BBQ.

# `holidays_with_bbqs(holiday_supplies) #=> [:fourth_of_july, :memorial_day]`

def find_BBQ_in_holidays(holiday_supplies)
   bbq_holiday = []
  holiday_supplies.each do |season, holiday |
    holiday.each do |name_holiday, supplies |
      if supplies.include? "BBQ"
        bbq_holiday << name_holiday 
      end
    end
  end
  puts bbq_holiday
end

find_BBQ_in_holidays(holiday_supplies)

