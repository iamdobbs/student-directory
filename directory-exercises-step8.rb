def input_students
  puts "Please enter the names of the students, hit return and enter their place of birth"
  puts "To finish, just hit return twice more"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  birthplace = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november, hobbies: :murder, birthplace: birthplace}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
    birthplace = gets.chomp
  end
  # return the array of students
  students
end   

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
    c = 0
    i = 0
    while c != students.count do
    puts "#{students[i][:name]} (#{students[i][:cohort]} cohort). Hobbies include: #{students[i][:hobbies]}. 
    Place of birth: #{students[i][:birthplace]}"
    i += 1
    c += 1
  end  
end 
  
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

# nothing happens until we call the method
students = input_students
print_header
print(students)
print_footer(students)

