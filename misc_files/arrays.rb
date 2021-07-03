# litteral constructor
my_array = []

# class constructor
my_array = Array.new 

puppies = ["bulldog", "terrier", "poodle"]

random_numbers = [ 2, 5, 6, 8, 345, 64234534]

mixed = ["dog", "cat", 4, 6, 13, "integers", "&", "strings"]
# possible to create arrays with disparate data types, but discouraged


# to replace an entry, provide index number
speed_dial = ["Ada", "Kay", "Matz", "DHH", "Borg"]

speed_dial[1] = "Chipps"

#=> speed_dial = ["Ada", "Chipps", "Matz", "DHH", "Borg"]

# Shovel method 
famous_cats = ["lil' bub", "grumpy cat", "Maru"]

famous_cats << "nala cat"

#=> famous_cats = ["lil' bub", "grumpy cat", "Maru", "nala cat"]