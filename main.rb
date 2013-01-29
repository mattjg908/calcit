require 'rainbow'

#mortgage monthly
def mortgage(p, i, n)
  x = (1 + i)
  x = x**n

  y = i * x
  y = y / (x - 1)

  y = y * p

end

puts "To calculate your monthly payment for your mortgage,
write the numbers of your (p)rincipal of the loan, (i)nterest rate, and (n)umber of payments"

print "p: "
p = gets.chomp.to_i
print "i: "
i = gets.chomp.to_f
print "n: "
n = gets.chomp.to_i

puts "Your monthly payment would be #{mortgage(p, i, n)}"





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
# calculator interface -- Matt Galvin
# ======================

print "Would you like to use a basic calculator or an advanced calculator? Press 1 for basic, 2 for advanced. "
  answer = gets.chomp.to_i

  while ( answer != 1 ) && ( answer != 2 )
    puts "Stop being a loser. Please Enter '1' or '2'."
    answer = gets.chomp.to_i
  end

  if answer == 1
    print "Do you want to add, subtract, multiply or divide? "
    answer = gets.chomp.downcase

      print "What's the first number you want to use? "
      number1 = gets.chomp.to_i

      print "What's the second number you want to use? "
      number2 = gets.chomp.to_i

  case answer
    when "add"
      result = add(number1, number2)
    when "subtract"
      result = subtract(number1, number2)
    when "multiply"
      result = multiply(number1, number2)
    when "divide"
      result = divide(number1, number2)
  end

  puts "Your answer is #{result}!"

  elsif answer == 2

    print "Do you want to raise to a power (type RAISE), or square root? (type SQRT) "

    advanced = gets.chomp.downcase

      if advanced == "sqrt"
        print "What number do you want to square? "
        number1 = gets.chomp.to_i

        result = squareroot(number1)
      elsif advanced == "raise"
        print "What's the base number? "
        number1 = gets.chomp.to_i

        print "Raise #{number1} to what power? "
        number2 = gets.chomp.to_i

        result = power(number1, number2)
      else
        print "Woops. Looks like you didn't enter the right thing. "
      end

  puts "Your answer is #{result}!"

  end


def mortgage(p, i, n) # monthly
  x = (1 + i)
  x = x**n

  y = i * x
  y = y / (x - 1)

  y = y * p

end

puts "To calculate your monthly payment for your mortgage,
write the numbers of your (p)rincipal of the loan, (i)nterest rate, and (n)umber of payments"

print "p: "
p = gets.chomp.to_i
print "i: "
i = gets.chomp.to_f
print "n: "
n = gets.chomp.to_i

puts "Your monthly payment would be #{mortgage(p, i, n)}"









