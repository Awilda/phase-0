# Calculate a Grade

# I worked on this challenge [with: Christopher Mark].


# Your Solution Below
def get_grade(average)
  if average >= 90
    p "A"
  elsif average >= 80 
    p "B"
  elsif average >= 70 
    p "C"
  elsif average >= 60 
    p "D"
  else
    p "F"
  end
end