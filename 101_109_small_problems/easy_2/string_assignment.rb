# String Assignment

# Take a look at the following code:

# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name
# What does this code print out? Think about it for a moment before continuing.

# If you said that code printed

# Alice
# Bob
# you are 100% correct, and the answer should come as no surprise. Now, let's look at something a bit different:

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name
# What does this print out? Can you explain these results?

'BOB'
'BOB'
 
# In the first example they are both pointing to the same data. However, name is then reassigned
# to a new string/data. Now save_name and name point to different strings.

# In the second example they both continue to point to the same data/string, nothing is reassigned.
# By calling upcase! ( a mutating method ) we modify the variable name and its data/string. save_name
# is still pointing tot the same data/string and since it has now been modified, it prints out
# the same value.