#Input: non-negative integer
#Output: factorial of integer
#Steps:
#1. define method 'factorial' that calls in one argument, 'integer'
#2. return 1 if integer equals 0
#3. multiply integer by integer as is loops down to 1

def factorial (integer)
  if integer == 0
    return 1
  else
    integer * factorial(integer-1)
  end
end
