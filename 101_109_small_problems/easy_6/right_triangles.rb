# Understand the problem : 
# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose
# sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) 
# should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Set up your test cases
# triangle(5)

# Describe your inputs, outputs, and data structures
# input: an integer that displays a right triangle whose sides each have n stars
# output: the output showing a right triangle

# Describe your algorithm
# Create a variable called star_count that will contain the correct amount of stars printed. The correct amount of stars begins
# with the num entered minus the num -1 which will always leave us with one star beginning. From there we add one star each iteration using the times method and incrementing
# Second we create a spaces_count varialbe which counts the spaces for each line. As we increment the stars we decrement the spaces which starts with the num - 1 * space ' '

# Right Triangles

# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Examples:

# triangle(5)

#     *
#    **
#   ***
#  ****
# *****
# triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

# -------------------------------------------------------------------------------------
# Begin coding:


# def traingle(num)
#   star_count = num - (num - 1)
#   spaces_count = num - 1

#   num.times do 
#    puts (' ' * spaces_count) + ('*' * star_count)
#    spaces_count -= 1
#    star_count += 1
#   end
# end

def triangle(num, angle)
  list = ['right', 'left', 'upside down right', 'upside down left']
  if list.include?(angle) == false
    puts "#{angle} is not one of the listed angels"
    puts "Please choose one of the following: #{list}"  
    return nil
  end

  star_count = num - (num - 1)
  spaces_count = num - 1

  if angle == 'right' || angle == 'left'
    num.times do 
      angle == 'right' ? puts((' ' * spaces_count) + ('*' * star_count)) : puts(('*' * star_count) + (' ' * spaces_count))
      spaces_count -= 1
      star_count += 1
    end
  else
    star_count = num
    spaces_count = 0

    num.times do 
     angle == 'upside down right' ? puts((' ' * (spaces_count)) + ('*' * star_count)) : puts(('*' * star_count) + (' ' * (spaces_count)))
     spaces_count += 1
     star_count -= 1
    end
  end
end
# Please enter, num size and for position enter : 'right', 'left', 'upside down right' or 'upside down left'
triangle(5, 'upside down left')


