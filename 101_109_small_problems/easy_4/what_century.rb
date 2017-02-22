# Understand the problem : 
# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

# Set up your test cases
# p century(2000) #== '20th'
# p century(2001) #== '21st'
# p century(1965) #== '20th'
# p century(256) #== '3rd'
# p century(5) #== '1st'
# p century(10103) #== '102nd'
# p century(1052) #== '11th'
# p century(1127) #== '12th'
# p century(11201) #== '113th'

# Describe your inputs, outputs, and data structures
# input will be an integers entered as the century
# the return value will be a string that begins with the century number

# Describe your algorithm

# Century Number
# First I place the ending of the centuries in a hash called 'endth'.
# Second, I convert the century to a float and divide by 100 and compare
# that to the century divided by 100, if the float value is higher than 0
# then we now if is part of the next century. If true, we add 100 to century
# to get the correct century number, if false we divide by 100 and keep it at that value.

# Century Suffix
# Now we convert the century to a string. We iterate through the endth hash,
# if the centuries last string/number is included and the century last two strings/numbers 
# do not equal 11,12 or 13 , we assign the key which contains the suffix to the century.
# Now after the iteration, if the century was not concatenated, meaning; that it
# is not a 'st', 'nd' or 'rd' suffix we will have the 'th' variable assigned to 
# an array containing 4nils, if this is true, we will concatenate century with a 'th' to give us
# string for our final return value that will give us the string that begins
# with the century number and ends with 'st','nd', 'rd', or 'th'.

# What Century is That?

# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Examples:

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'


# -------------------------------------------------------------------------------------
# Begin coding

def century(century)
  endth = {'st' => ['1'], 'nd' => ['2'], 'rd' => ['3'], 'th' => ('11'..'13').to_a }
  century.to_f / 100 > century / 100 ? century = (century += 100) / 100 : century /= 100 # will give you the century
  century = century.to_s
  th = endth.map { |k,v| century << k  if v.include?(century[-1]) && !(endth['th'].include?(century[-2..-1])) } # will add the proper endth if the century is included in the hash 'endth'. If there is no match, it will return 4nils.
  th.count(nil) == 4 ? century << 'th' : century # if 4 nils are returned we know that the iteration was no match for century, meaning anything else will be 'th' 
end

p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256) #== '3rd'
p century(5) #== '1st'
p century(10103) #== '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'

