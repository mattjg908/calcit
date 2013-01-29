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

def power (n1, n2)
  n1 ** n2
end

def squareroot (n1)
  n1 ** 0.5
end


# ======================
# calculator interface -- Matt Galvin

print "Would you like to use a basic calculator or an advanced calculator? Press 1 for basic, 2 for advanced. "
  answer = gets.chomp.to_i
  # while answer != 1 || 2
  #   puts "I don't understand. Please answer '1' or '2'. "
  # answer = gets.chomp.to_i
  # end

  if answer == 1
    print "Do you want to add, subtract, multiply or divide?"
    answer = gets.chomp.downcase
    if answer == "add"

      print "What's the first number you want to use? "
      number1 = gets.chomp.to_i

      print "What's the second number you want to use? "
      number2 = gets.chomp.to_i

      puts add(number1,number2)
    end

      # case answer
      #   when add
      #     add(number1, number2)
      #   when subtract
      #     subtract(number1, number2)
      #   when multiply
      #     multiply(number1, number2)
      #   when divide
      #     divide(number1, number2)
      #   end
  else
    print "Do you want to raise to a power, or square root?"
    advanced = gets.chomp
    print "What numbers would you like to use?"
    numbers = gets.chomp.to_i
      if "power"
        #power function
      else
        #square root function
      end
  end
