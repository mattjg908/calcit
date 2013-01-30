require 'rainbow'

# Your output is a string: “Your trip will take 3.5 hours and cost $255.33.”
#  def
# For every 1 MPH over 60 MPH, reduce the the MPG by 2 MPG.

# ======================
# Number Check
# ======================

def n_c
  num = gets.chomp
  while num.to_f <= 0
    print "Sorry, I can't accept that. Please enter a different number. "
    num = gets.chomp
  end
  return num.to_f
end

# ======================
# Trip Calculator
# ======================

def trip

  burn = 0

  print "How far will you be going? (in miles) "
  d = gets.chomp.to_f

  print "And how fast will you drive? (in mph) "
  mph = gets.chomp.to_f

  print "How many miles per gallon does your car get? "
  mpg = gets.chomp.to_f

  print "Finally, What's the current gas price? (in USD) "
  dolpg = gets.chomp.to_f

  if mph > 60
    burn = mph - 60
    burn = burn * 2
  end

  result = mpg - burn
  result = d / result
  result = result * dolpg
  result = result.round(2)

  puts "Your trip will take #{(d/mph).round(1)} hours and cost $#{result}!"

end



# ======================
# Mortgage Calculator
# ======================

def mortgage

  print "What's the principal on your loan? "
  p = gets.chomp.to_f

  print "What's your interest rate? "
  i = gets.chomp.to_f

  print "Finally, how many number of payments would you like to make? "
  n = gets.chomp.to_f

  x = (1 + i)
  x = x**n

  y = i * x
  y = y / (x - 1)

  y = y * p

  result = y.round(2)
  puts "Your monthly payment is $#{result}!"

end

# ======================
# BMI Calculator
# ======================

def bmi

  print "What is your weight? (in lbs) "
  weight = gets.chomp.to_f

  print "What is your height? (in inches) "
  height = gets.chomp.to_f

  result = ( weight * 703 / ( height**2) )
  result = result.round(2)

  puts "Your BMI is #{result}!"

end

# ======================
# Basic Calculator Functions -- Bryan Reid
# ======================

def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def multiply(x,y)
  x * y
end

def divide(x,y)
  x.to_f / y.to_f
end

# ======================
# advanced calculator functions -- Stephen Bae
# ======================

def power(n1, n2)
  n1 ** n2
end

def squareroot(n1)
  n1 ** 0.5
end

# ======================
# basic calc menu
# ======================

def basic_calc
  print "Do you want to (a)dd, (s)ubtract, (m)ultiply or (d)ivide? ".color(:blue)
  answer = gets.chomp.downcase

  print "What's the first number you want to use? "
  number1 = n_c

  print "What's the second number you want to use? "
  number2 = n_c

  case answer
    when "a"
      result = add(number1, number2)
    when "s"
      result = subtract(number1, number2)
    when "m"
      result = multiply(number1, number2)
    when "d"
      result = divide(number1, number2)
  end

  puts "Your answer is #{result}!"
  gets
end


# ======================
# advanced calc menu
# ======================

def adv_calc
  print "Do you want to (r)aise to a power, or (s)quare root?".background(:yellow).color(:black) + " "

  advanced = gets.chomp.downcase

  if advanced == "s"
    print "What number do you want to square? "
    number1 = n_c

    result = squareroot(number1)
  elsif advanced == "r"
    print "What's the base number? "
    number1 = n_c

    print "Raise #{number1} to what power? "
    number2 = n_c

    result = power(number1, number2)

  end

  puts "Your answer is #{result}!"
  gets

end

# ======================
# specialized calc menu
# ======================

def spec_calc
  print "Do you want to use the (B)MI calculator, (m)ortgage calculator, or the (t)rip calculator? ".color(:green)

  specialized = gets.chomp.downcase

  if specialized == "b"
    bmi
  elsif specialized == "m"
    mortgage
  elsif specialized == "t"
    trip
  end

  gets

end

# ======================
# calculator interface
# ======================

response = " "

while response != "q"
  case response
  when "a"
    adv_calc
  when "b"
    basic_calc
  when "s"
    spec_calc
  end
  puts `clear`
  puts "Welcome to the best calculator ever."
  puts "=====================================".color(:red)
  puts "What would you like to do? Use the (b)asic calculator, (a)dvanced calculator, (s)pecialized calculator, or (q)uit?"
  response = gets.chomp.downcase
end

puts "Thank you!"