# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
p array[1][1][2][0]
# ============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
#p hash[:inner][3]
#p hash[:outer][:inner][3]
p hash[:outer][:inner]["almost"][3]



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
p nested_data[:array][1][:hash]
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |item|
  if item.is_a? Array
    item.map! {|subitem| subitem + 5}
  else
    item + 5
  end
end

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


startup_names.map! do |item|
  if item.is_a? Array
    item.map! do |subitem|
      if subitem.is_a? Array
        subitem.map! {|subsubitem| subsubitem << "ly"}
      else
        subitem << "ly"
      end
    end
  else
    item << "ly"
  end
end

p startup_names

# Reflection
=begin
What are some general rules you can apply to nested arrays?
I think you just really have to pay close and careful attention to each and every "nest". Not only by counting each one youre trying to target but also being aware of which kind of data structure it is (hash or array).

What are some ways you can iterate over nested arrays?
You do so like you would over a regular array, the main difference here is that once you run into another array (nested), you need to have your program iterate again over the inner data

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
I was already quite familiar with #map and #collect, we used map because my pair was more used to that as well. I knew it was a good option as #map takes in a block once for each element and replaces it with the value returned (in this case, adding 5 or "ly" to each element).

=end