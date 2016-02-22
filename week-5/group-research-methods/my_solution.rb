# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(words, thing_to_find)
  words.select do |word|
    next unless word.respond_to?(:include?)
    word.include?(thing_to_find)
  end
end

def my_hash_finding_method(my_family_pets_ages, thing_to_find)
  my_family_pets_ages.keep_if do |key, val|
    val == thing_to_find
  end
  my_family_pets_ages.keys
end

# Identify and describe the Ruby method(s) you implemented.
# .select to iterate over every element and push it into a temporary array based on a criteria.
# .respond_to? to see if an element responds to a specific method call
# .include? to see if an element in an array contained a certain character
# .keep_if to select elements that return true to a specific code block
# .keys to return the keys of a hash

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
source.delete_if {|thing| thing.to_s.include?(thing_to_delete.to_s)}
end

def my_hash_deletion_method!(source, thing_to_delete)
source.delete_if {|k,v| k.include?(thing_to_delete)}
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

=begin
Release 1: Identify and describe the Ruby method you implemented. Teach your accountability group how to use the methods.

Person 1 - .select chooses elements in an array or hash on the criteria specified in the following code block and puts those elements into a temporary array. .respond_to? is a great method to use if you want to single out certain variables that respond to a specific method call. For example, integers do not respond to the .include? method. Therefore If you wants to get rid of all the integers in an array or hash, one way to do is to get rid of the elements that do not respond to .include? .include? is a method that checks a variable to see if it includes a certain character. Keep in mind that it does not work on integers so if you want to find a specific number that contains a specific digit, you will have to convert it to a string first. .keep_if is a destructive method that keeps only the elements that meet the required criteria in the following code in any element or hash. It's very useful to use when you want to modify an array or element to contain only things that equate to true in the code. Anything false gets discarded. Lastly .keys returns the keys from the key value pairs in a hash.

Person 2-
Person 3-
Person 4-
Person 5-



Release 3: Reflect!
What did you learn about researching and explaining your research to others?

Person 1- I learn a lot about various methods that I described. It definitely solidified my knowledge of the methods when I had to explain in words how these methods work. I also learned a lot about syntax as well as how to research specific methods.

Person 2-
Person 3-
Person 4-
Person 5-

=end
