# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Create their respective quatities using split on the string input. Push array to a hash structure.
  # set default quantity for each item in the array.
  # print the list to the console [can you use one of your other methods here?]
# output:  hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: first define method with two arguement("item")
#        hash_name[item] = quantity
# output: hash with new item and quantity

# Method to remove an item from the list
# input: item name and quantity
# steps: first define the method with two arguements("item")
#  get rid of hash_name[item]
# output: hash with less select item(s)

# Method to update the quantity of an item
# input: item name and quantity
# steps: if positive number add, if negative number subract quantity
#cannot take out more items than defined on the list or cannot take out items that aren't on the list
# output: updated hash

# Method to print a list and make it look pretty
# input: the hash
# steps: do each loop |k,v| puts "k = #{v}
# output: A nice list.

def create_list(groceries)
  list_items = groceries.split(" ")
  item_hash = Hash.new
  list_items.each do |x|
    item_hash[x] = 1
  end
  print item_hash
  return item_hash
end

item_hash =  create_list("pizza chicken milk cheese")

def add_item(item_hash, item, quantity = 1)
  item_hash do
  item_hash[item] = quantity
  end
end

add_item(item_hash,"burger", 2)


=begin
What did you learn about pseudocode from working on this challenge? - That everything needs to be done step by step no mater how small.
What are the tradeoffs of using Arrays and Hashes for this challenge? - Arrays can be used for similar items in a list, hashes can add an extra dimension by assigning a value to it.
What does a method return? - It returns the evaluation of the code block inside it using paramters.
What kind of things can you pass into methods as arguments? - Strings, integers, floats, booleans, and variables.
How can you pass information between methods? by saving the evaluated method in a variable.
What concepts were solidified in this challenge, and what concepts are still confusing? - Scope, where and how local variables can be called from.


=end