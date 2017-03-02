# Understand the problem : 
# Write a method that takes a string argument and returns a new string that contains the value of the original string with
# all consecutive duplicate characters collapsed into a single character.

# Set up your test cases
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# Describe your inputs, outputs, and data structures
# input: a string with doubles in a row
# output: a string with no doubles in a row.

# Describe your algorithm
# Iterate through string, if the char and the next char are equal then it's a double, if true it returns 'delete' if not
# then it returns the char. Next we call select l if it is 'delete' which will give us no duplicates, lastly we join for no doubles.
# ddaaiillyy ddoouubbllee

# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character.

# Examples:

# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# -------------------------------------------------------------------------------------
# Begin coding:
# Further exploration:
# They went to nil becuase if the last two chars repeated then not going +1 after the size would have left both chars.

def crunch(str)
  str.chars.map.with_index { |char, idx| char == str.chars[idx + 1] ? 'delete' : char }.select { |l| l unless l == 'delete' }.join
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''

str = 'ddaaiillyy ddoouubbllee'
p str.tr_s(' -z',' -z')
