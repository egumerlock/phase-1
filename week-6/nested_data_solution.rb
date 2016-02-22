# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
#p array[1][0][1][0]
#p array[1][0[1][0]]
p array[1][1][2][0]



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
# p nested_data[:array][1]
p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

my_plus_five = number_array.map do |element|
  if element.kind_of?(Integer)
    element + 5 #=> 10
  elsif element.kind_of?(Array)
    element.map do |x|
      x + 5
    end #=> [15, 20]
  end
end

p my_plus_five

# Bonus:
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_name_generator = startup_names.map do |element|
  if element.kind_of?(String)
    element << "ly"
  elsif element.kind_of?(Array)
    element.map do |inner_element|
      if inner_element.kind_of?(String)
        inner_element << "ly"
      elsif inner_element.kind_of?(Array)
        inner_element.map do |third_level_element|
          if third_level_element.kind_of?(String)
            third_level_element << "ly"
          end
        end
      end
    end
  end
end

p startup_name_generator

=begin
What are some general rules you can apply to nested arrays?
- Always remember the first position is indexed at 0. It also helps me if I start from inside the desired element and work my way out and write the positions right to left.
What are some ways you can iterate over nested arrays?
- There are a multitude of ways as long as there is an if statement to tell ruby that shes about to encounter another array, therefore she muct dive further into it and run specified methods on those. I used #each and #map methods.
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option? I used #kind_of. It was useful to tell ruby that if she encounters a sub-array throughout her iteration on the array, to dive deeper and iterate over that one as well.

=end