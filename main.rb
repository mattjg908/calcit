print "Would you like to use a basic calculator or an advacnced calculator? Press 1 for basic, 2 for advanced. "
  answer = gets.chomp
  if answer == 1
    print "Do you want to add, subtract, multiply or divide?"
    answer = gets.chomp
    print "What numbers would you like to use?"
    numbers = gets.chomp.to_i
      case basic
        when add
          #add function
        when subtract
          #subtract funciton
        when multiply
          #multiply function
        when divide
          #divide function
        end
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