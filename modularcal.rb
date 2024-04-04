module CalculatorOperations
    def add(a, b)
      (a + b) % 10
    end
  
    def subtract(a, b)
      (a - b) % 10
    end
  
    def multiply(a, b)
      (a * b) % 10
    end
  
    def divide(a, b)
      if b != 0
        (a / b) % 10
      else
        puts "Error: Division by zero"
        nil
      end
    end
  end
  
  class Calculator
    include CalculatorOperations
  
    def calculate(operation, a, b)
      case operation.downcase
      when 'add'
        add(a, b)
      when 'subtract'
        subtract(a, b)
      when 'multiply'
        multiply(a, b)
      when 'divide'
        divide(a, b)
      else
        puts "Invalid operation"
        nil
      end
    end
  end
  
  # Get user input
  puts "Enter operation (add, subtract, multiply, divide):"
  operation = gets.chomp
  
  puts "Enter first operand:"
  operand1 = gets.chomp.to_i
  
  puts "Enter second operand:"
  operand2 = gets.chomp.to_i
  
  # Perform calculation
  calculator = Calculator.new
  result = calculator.calculate(operation, operand1, operand2)
  
  # Display result
  puts "Result: #{result}" unless result.nil?
  