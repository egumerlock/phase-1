# Your Names
# 1)Leo Kukhar
# 2)Eric Gumerlock
# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

#Define the method, two parameters, an item and a number of ingredients
def serving_size_calc(item_to_make, num_of_ingredients)
  recipe = {"cookie" => 1, "cake" =>  5, "pie" => 7}

#If it is something we cannot make, raise argument
  raise ArgumentError.new("#{item_to_make} is not a valid input") unless recipe.has_key?(item_to_make)
#We set serving size to value at key
  amount_needed = recipe[item_to_make]
  remaining_ingredients = num_of_ingredients % amount_needed
  food_amount = num_of_ingredients / amount_needed
#Specifies two cases, no ingredients leftover or you have leftover ingredients
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{food_amount} of #{item_to_make}"
  when (1..5)
    return "Calculations complete: Make #{food_amount} of #{item_to_make}, you can also make #{remaining_ingredients} cookie."
  when 6
    return "Calculations complete: Make #{food_amount} of #{item_to_make}, you can also make 1 cake or #{remaining_ingredients} cookie."
  else
    return "Calculations complete: Make #{food_amount} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end
#call serving_size method
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("pie", 13)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

=begin
What did you learn about making code readable by working on this challenge? -I learned how the proper way to use an unless statement. I also learn that there are a multitude of ways on going about things, some of which are a lot shorter than others.

Did you learn any new methods? What did you learn about them?
- I leard the method #has_key? for the hash, it'll return trunt if the specified key that is being looked for is present in the hash.

What did you learn about accessing data in hashes?
-The you don't have to iterate over each key value pair in a hash to see if a key or value is present. There is a built it method that will scan the whole hash for you.

What concepts were solidified when working through this challenge?
-Refactoring was solidified for me, as well as making your code more dry.

=end