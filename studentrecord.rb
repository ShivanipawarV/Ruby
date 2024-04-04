# class StudentRecords
#     def initialize
#       @students = {}
#     end
  
#     def add_student
#       puts "Enter student details:"
#       print "Name: "
#       name = gets.chomp
#       print "Roll Number: "
#       roll_number = gets.chomp.to_i
#       print "Grade: "
#       grade = gets.chomp
#       @students[roll_number] = { name: name, grade: grade }
#       puts "Student added successfully!"
#     end
  
#     def update_grade
#       puts "Enter roll number of the student whose grade you want to update:"
#       roll_number = gets.chomp.to_i
#       if @students.key?(roll_number)
#         puts "Enter new grade:"
#         new_grade = gets.chomp
#         @students[roll_number][:grade] = new_grade
#         puts "Grade updated successfully!"
#       else
#         puts "Student with roll number #{roll_number} not found!"
#       end
#     end
  
#     def display_student
#       puts "Enter roll number of the student you want to display:"
#       roll_number = gets.chomp.to_i
#       if @students.key?(roll_number)
#         student = @students[roll_number]
#         puts "Student Details:"
#         puts "Name: #{student[:name]}"
#         puts "Roll Number: #{roll_number}"
#         puts "Grade: #{student[:grade]}"
#       else
#         puts "Student with roll number #{roll_number} not found!"
#       end
#     end
  
#     def display_all_students
#       if @students.empty?
#         puts "No student records found!"
#       else
#         puts "All Student Records:"
#         @students.each do |roll_number, student|
#           puts "Name: #{student[:name]}, Roll Number: #{roll_number}, Grade: #{student[:grade]}"
#         end
#       end
#     end
  
#     def delete_student
#       puts "Enter roll number of the student you want to delete:"
#       roll_number = gets.chomp.to_i
#       if @students.key?(roll_number)
#         @students.delete(roll_number)
#         puts "Student with roll number #{roll_number} deleted successfully!"
#       else
#         puts "Student with roll number #{roll_number} not found!"
#       end
#     end
#   end
  
#   # Example usage
#   records = StudentRecords.new
#   loop do
#     puts "Menu:"
#     puts "1. Add Student"
#     puts "2. Update Grade"
#     puts "3. Display Student"
#     puts "4. Display All Students"
#     puts "5. Delete Student"
#     puts "6. Exit"
#     print "Enter your choice: "
#     choice = gets.chomp.to_i
  
#     case choice
#     when 1
#       records.add_student
#     when 2
#       records.update_grade
#     when 3
#       records.display_student
#     when 4
#       records.display_all_students
#     when 5
#       records.delete_student
#     when 6
#       break
#     else
#       puts "Invalid choice! Please enter a number between 1 and 6."
#     end
#   end
  

class StudentRecords
    def initialize
      @students = {}
    end
  
    def add_student
      puts "Enter student details:"
      print "Name: "
      name = gets.chomp
      loop do
        print "Roll Number: "
        roll_number = gets.chomp.to_i
        if @students.key?(roll_number)
          puts "Student with roll number #{roll_number} already exists! Please choose another roll number."
        else
          print "Grade: "
          grade = gets.chomp
          @students[roll_number] = { name: name, grade: grade }
          puts "Student added successfully!"
          break
        end
      end
    end
  
    def update_grade
      puts "Enter roll number of the student whose grade you want to update:"
      roll_number = gets.chomp.to_i
      if @students.key?(roll_number)
        puts "Enter new grade:"
        new_grade = gets.chomp
        @students[roll_number][:grade] = new_grade
        puts "Grade updated successfully!"
      else
        puts "Student with roll number #{roll_number} not found!"
      end
    end
  
    def display_student
      puts "Enter roll number of the student you want to display:"
      roll_number = gets.chomp.to_i
      if @students.key?(roll_number)
        student = @students[roll_number]
        puts "Student Details:"
        puts "Name: #{student[:name]}"
        puts "Roll Number: #{roll_number}"
        puts "Grade: #{student[:grade]}"
      else
        puts "Student with roll number #{roll_number} not found!"
      end
    end
  
    def display_all_students
      if @students.empty?
        puts "No student records found!"
      else
        puts "All Student Records:"
        @students.each do |roll_number, student|
          puts "Name: #{student[:name]}, Roll Number: #{roll_number}, Grade: #{student[:grade]}"
        end
      end
    end
  
    def delete_student
      puts "Enter roll number of the student you want to delete:"
      roll_number = gets.chomp.to_i
      if @students.key?(roll_number)
        @students.delete(roll_number)
        puts "Student with roll number #{roll_number} deleted successfully!"
      else
        puts "Student with roll number #{roll_number} not found!"
      end
    end
  end
  
  # Example usage
  records = StudentRecords.new
  loop do
    puts "Menu:"
    puts "1. Add Student"
    puts "2. Update Grade"
    puts "3. Display Student"
    puts "4. Display All Students"
    puts "5. Delete Student"
    puts "6. Exit"
    print "Enter your choice: "
    choice = gets.chomp.to_i
  
    case choice
    when 1
      records.add_student
    when 2
      records.update_grade
    when 3
      records.display_student
    when 4
      records.display_all_students
    when 5
      records.delete_student
    when 6
      break
    else
      puts "Invalid choice! Please enter a number between 1 and 6."
    end
  end