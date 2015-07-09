 #---PREP---
conversion_rates = {"USD" => 1,"EUR" => 0.91,"JPY" => 121.31,"GBP" => 0.65,"CHF" => 0.95, "CAD" => 1.27, "AUD" => 1.34, "ZAR" => 12.52}

def convert(rate_hash, us_dollars, abbreviation) #converts USD to currency of choice
  rate_hash.each do |code, rate|
    if code == abbreviation
      return "#{us_dollars} USD equals #{us_dollars.to_i * rate} #{code}."
    end
  end
end

#---RUN---
overall = "yes"
while overall == "yes"

  puts "What would you like to do? (Enter the number.)"
  puts "1. Operation calculator"
  puts "2. Currency converter"
  answer = gets.chomp
  if answer == "1"
    calc_loop = "yes"

    while calc_loop == "yes"

    puts "What operation would you like to use? Enter the symbol (*,+,-,/)."
    operation = gets.chomp.downcase

    #MULTIPLICATION
    if operation == "*"
      puts "Enter in a number:"
      num_1 = gets.chomp.to_i
      puts "Enter in a number:"
      num_2 = gets.chomp.to_i
      problem = num_1 * num_2
      puts "Would you like to multiply another number?"
      question = gets.chomp.downcase
      while question == "yes"
        puts "Enter in a number:"
        num = gets.chomp.to_i
        problem = problem*num
        puts "Would you like to multiply another number?"
        question = gets.chomp.downcase
      end
      puts "Your answer is #{problem}"

    #ADDITION
    elsif operation == "+"
      puts "Enter in a number:"
      num_1 = gets.chomp.to_i
      puts "Enter in a number:"
      num_2 = gets.chomp.to_i
      problem = num_1 + num_2
      puts "Would you like to add another number?"
      question = gets.chomp.downcase
      while question == "yes"
        puts "Enter in a number:"
        num = gets.chomp.to_i
        problem = problem+num
        puts "Would you like to add another number?"
        question = gets.chomp.downcase
      end
      puts "Your answer is #{problem}"

    #DIVISION
    elsif operation == "/"
      puts "Enter in a number:"
      num_1 = gets.chomp.to_f
      puts "Enter in a number:"
      num_2 = gets.chomp.to_f
      problem = num_1 / num_2
      puts "Would you like to divide another number?"
      question = gets.chomp.downcase
      while question == "yes"
        puts "Enter in a number:"
        num = gets.chomp.to_f
        problem = problem/num
        puts "Would you like to divide another number?"
        question = gets.chomp.downcase
      end
      puts "Your answer is #{problem}"
        #SUBTRACTION
    elsif operation == "-"
      puts "Enter in a number:"
      num_1 = gets.chomp.to_i
      puts "Enter in a number:"
      num_2 = gets.chomp.to_i
      problem = num_1 - num_2
      puts "Would you like to subtract another number?"
      question = gets.chomp.downcase
      while question == "yes"
        puts "Enter in a number:"
        num = gets.chomp.to_i
        problem = problem-num
        puts "Would you like to subtract another number?"
        question = gets.chomp.downcase
      end
      puts "Your answer is #{problem}"
    else
      puts "Sorry, that is not one of your options"
    end

    puts "Would you like to use another operation?"
    calc_loop = gets.chomp.downcase

    end

  elsif answer == "2"
    converting = "yes"
    while converting == "yes"
    puts "USD..................United States Dollar"
    puts "EUR..................Euro"
    puts "JPY..................Japanese Yen"
    puts "GBP..................Great British Pound"
    puts "CHF..................Swiss Franc"
    puts "CAD..................Canadian Dollar"
    puts "AUD..................Australian Dollar"
    puts "ZAR..................South African Dollar"
    puts ""

    puts "Enter the amount of USD you'd like to convert."
    usd = gets.chomp
    puts "Enter the three letter code for the currency you'd like to convert to."
    abbr_code = gets.chomp

    puts convert(conversion_rates, usd, abbr_code)
    puts "Would you like to convert more USD?"
    converting = gets.chomp.downcase
  end
end
  puts "Would you like to go back to the main menu?"
  overall = gets.chomp.downcase
end