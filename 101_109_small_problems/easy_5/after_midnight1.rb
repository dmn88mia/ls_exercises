# Understand the problem : 
# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.
# Cannot use ruby's Date and Time classes.

# Set up your test cases
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# Describe your inputs, outputs, and data structures
# input will be a number pos or neg
# output: a string formated to a 24time

# Describe your algorithm
# Quite confusing, but I'll give it a go. If the number surpassed the minutes in a day (1440) or (-1440) I divide it by 1440 or -1440 depending on the num being pos or neg. to see how how many times
# it has surpassed the 1440 or -1440, each time it does I know its a new 24 hour clock so for ie. if the num is 2885, after dividing by 1440 I know it evenly divides by 2 and save that in a variable called 'days'
# Next for a variabe called 'new_time': I set this to: the num entered + or - (depending if the num is pos or neg.) (days * 1440) which when subtracted or added (depends if pos or neg) gives us a number under 1440
# that I can use for the hour mathimatic equation in the next line of code. So now regardless if the number is greater than 1440(minutes in a day) or less than -1440 I will have a number that falls in the range of 0 - 1440 or 0 - (-1440)
# I need this to be in those ranges to determine the hours. Next for the hours to be set: If the number is negative I divide the num.to_f by 60(min per hour).to_i - 1 plus 24 to find the hour. If positive I do the same minus the -1 + 24.
# This will give me the hour, it took playing around with it to make this up, I didn't look online for an equation, just did it. Pretty confusing and took a bit to figure out, I'm sure there is a shorter way but it's the way I was able to do it.
# Lastly, for the minutes I used the modulo , num % 60 for the minutes, doesn't matter if neg or pos here. I created my own format_time method to print out the code correctly.

# After Midnight (Part 2)

# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# Examples:

# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0
# Disregard Daylight Savings and Standard Time and other irregularities.



# -------------------------------------------------------------------------------------
# Begin coding:

MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def neg?(num)
  num < 0
end

def format_time(hours, minutes)
  time = [hours, minutes].map { |time| time < 10 ? "#{time}:".prepend('0') : "#{time}:" }.join.chop
end

def time_of_day(num)
  if num < (-MINUTES_PER_DAY) || num > MINUTES_PER_DAY
    days = neg?(num) ? num / (-MINUTES_PER_DAY) : num / MINUTES_PER_DAY
    new_time = neg?(num) ? num + (days * MINUTES_PER_DAY) : num - (days * MINUTES_PER_DAY)
    hours = neg?(num) ? ((new_time.to_f / MINUTES_PER_HOUR).to_i - 1) + 24 : (new_time.to_f / MINUTES_PER_HOUR).to_i 
    minutes = new_time % 60
  else
    hours = neg?(num) ? ((num.to_f / MINUTES_PER_HOUR).to_i - 1) + 24 : (num.to_f / MINUTES_PER_HOUR).to_i
    minutes = num % 60
  end
  format_time(hours,minutes)
end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"


# Not refactoreed but leaving, original code

# def pos_num(num)
#   if num > MINUTES_PER_DAY
#     days = num / MINUTES_PER_DAY
#     min_in_days = days * MINUTES_PER_DAY
#     new_time = num - min_in_days
#     hours = (new_time.to_f / MINUTES_PER_HOUR).to_i
#     minutes = new_time % 60
#     format('%02d:%02d', hours, minutes)
#   else
#     hours = (num.to_f / MINUTES_PER_HOUR).to_i
#     minutes = num % 60
#     format('%02d:%02d', hours, minutes)
#   end
# end

# def neg_num(num)
#   if num < -MINUTES_PER_DAY
#     days = num / (-MINUTES_PER_DAY)
#     min_in_days = days * MINUTES_PER_DAY
#     new_time = num + min_in_days
#     hours = ((new_time.to_f / MINUTES_PER_HOUR).to_i - 1) + 24 
#     minutes = new_time % 60
#   else
#     hours = ((num.to_f / MINUTES_PER_HOUR).to_i - 1) + 24 
#     minutes = num % 60
#   end
#   format('%02d:%02d', hours, minutes)
# end

# def time_of_day(num)
#   num < 0 ? neg_num(num) : pos_num(num)
# end

# p time_of_day(0) #== "00:00"
# p time_of_day(-3) #== "23:57"
# p time_of_day(35) #== "00:35"
# p time_of_day(-1437) #== "00:03"
# p time_of_day(3000) #== "02:00"
# p time_of_day(800) #== "13:20"
# p time_of_day(-4231) #== "01:29"