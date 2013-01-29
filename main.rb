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

end


# ======================
# calculator interface  # DOESN'T WORK RIGHT NOW
# ======================

def main_menu
  puts "Would you like to use a basic calculator or an advanced calculator?"
  print "Press 1 for basic, 2 for advanced, or 3 to quit."
  gets.chomp.to_i
end

answer = main_menu

if answer == 1
  basic_calc
elsif answer == 2
  adv_calc
else

end