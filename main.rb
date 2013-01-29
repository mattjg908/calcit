require 'rainbow'

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
  print "Do you want to (a)dd, (s)ubtract, (m)ultiply or (d)ivide? "
  answer = gets.chomp.downcase

  print "What's the first number you want to use? "
  number1 = gets.chomp.to_f

  print "What's the second number you want to use? "
  number2 = gets.chomp.to_f

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
  print "Do you want to (r)aise to a power, or (s)quare root? "

  advanced = gets.chomp.downcase

  if advanced == "s"
    print "What number do you want to square? "
    number1 = gets.chomp.to_f

    result = squareroot(number1)
  elsif advanced == "r"
    print "What's the base number? "
    number1 = gets.chomp.to_f

    print "Raise #{number1} to what power? "
    number2 = gets.chomp.to_f

    result = power(number1, number2)

  end

  puts "Your answer is #{result}!"
  gets

end

# ======================
# super small main menu
# ======================

def main_menu

end

# ======================
# calculator interface
# ======================

puts "Welcome to this fantastic calculator."
puts "=====================================".color(:red)
puts "What would you like to do? Use the (b)asic calculator, (a)dvanced calculator, or (q)uit?"
response = gets.chomp.downcase

while response != "q"
  case response
  when "a"
    adv_calc
  when "b"
    basic_calc
  end
  puts "=====================================".color(:red)
  puts "What would you like to do? Use the (b)asic calculator, (a)dvanced calculator, or (q)uit?"
  response = gets.chomp.downcase
end
