require "./teacher.rb"
require "./student.rb"
require "./classroom.rb"
require "./book.rb"

class App
  attr_reader :books, :people

  def initialize()
    @books = []
    @people = []
  end

  def list_all_books
    books.each_with_index do |book, index|
      puts("[#{index}] Title: #{book.title}, Author: #{book.author}")
    end
  end

  def list_all_people
    people.each do |person|
      puts("[#{person.is_a?(Student) ? "Student" : "Teacher"}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}")
    end
  end

  def create_person(number)
    if number == 1
      print("Age: ")
      age = gets.chomp

      classroom = Classroom.new("Physics")
      
      print("Name: ")
      name = gets.chomp
      
      print("Has parent permission? [Y/N]:")
      parent_permission_console = gets.chomp
      
      create_student(age, classroom, name, parent_permission_console == "Y" ? parent_permission = true : parent_permission = false)
      puts("Person created successfully")
    elsif number == 2
      print("Age: ")
      age = gets.chomp

      print("Specialization: ")
      specialization = gets.chomp

      print("Name: ")
      name = gets.chomp

      create_teacher(age, specialization, name)
      puts("Person created successfully")
    else
      puts("The number #{number} isn't a valid choice, please select number (1) to create a student or (2) to create
      a teacher")
    end
  end

  def create_a_book
    print("Title: ")
    title = gets.chomp

    print("Author: ")
    author = gets.chomp

    book = Book.new(title, author)
    books.push(book)
    puts("The book has been created successfully")
  end

  private

  def create_teacher(age, specialization, name)
    teacher = Teacher.new(age, specialization, name)
    people.push(teacher)
  end

  def create_student(age, classroom, name, parent_permission)
    student = Student.new(age, classroom, name, parent_permission)
    people.push(student)
  end
end