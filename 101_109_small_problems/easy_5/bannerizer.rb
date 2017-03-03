# Set up your test cases
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# Describe your inputs, outputs, and data structures
# input: a string 
# output: a string with a top and bottom bar and padding on the sides.

# Describe your algorithm
# For multiple lines, I set the limit to 50chars per line. Once the string is sent to the method it iterates through
# the string and saves the string to an array. If the string is less than 50chars then it is saved in an array inside
# another array as the first element. If the string is longer than 50 chars, the first 50 chars are saved inside the 
# array as a multidimensional array, [[string 50 chars],[etc],[etc]], so for every set of 50 chars, they are saved
# in new arrays. After splitting up the string into seperate arrays we iterate it the amount of times there is an
# array inside the main array. For each iteration we puts the string in that certain array. For the arrays that have less
# than 50 chars we add the difference by adding spaces to keep our side walls in place. Last we puts out the top bar,side bars
# and lines of string, bottom bar.

# Bannerizer

# Write a method that will take a short line of text, and print it within a box.

# Example:

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
# You may assume that the input will always fit in your terminal window.

# -------------------------------------------------------------------------------------
# Begin coding:
# def print_in_box(str)
#   str.size > 80 ? str = str.slice!(0,73) + '...' : str
#   line = "+#{'-' * str.size}--+"
#   spaces = "|#{' ' * str.size}  |"
#   puts str.size
  

#   puts line
#   puts spaces
#   puts "| #{str} |"
#   puts spaces
#   puts line
# end

def fix_block(arr)
  block = arr.map do |block| 
            block = block.join
            if block.size < 50 && arr.size != 1
              spaces = 50 - block.size
              block << ' ' * spaces  
            end
            block
          end

  (block.size).times { |i| puts "| #{block[i]} |" } 
end

def fifty_char_line(str)
  arr = []
  count_char = 0

  str.chars.each do |char|
    if arr[count_char].kind_of?(Array)
      if arr[count_char].size % 50 == 0   
        count_char += 1
        arr[count_char] = []
        arr[count_char] << char
      else
        arr[count_char] << char
      end    
    else 
      arr[count_char] = []
      arr[count_char] << char
    end
  end
  
  fix_block(arr)
end

def print_in_box(str)  
  top_bottom = str.size > 50 ? "+#{'-' * 50}--+" : "+#{'-' * (str.size)}--+"
  walls = str.size > 50 ? "|#{' ' * 50}  |" : "|#{' ' * str.size}  |"
  
  puts top_bottom
  puts walls
  fifty_char_line(str)
  puts walls
  puts top_bottom
end

print_in_box("This crap too a long time. Being able to make multiple lines appear in the box. Finally!")
# p block.size
# (block.size).times { |i| puts "| #{block[i]} |" }