require "./teacher.rb"
require "./student.rb"
require "./classroom.rb"

class App
  attr_reader :books, :people

  def initialize()
    @books = []
    @people = []
  end

  def list_all_books
    books.each do |book|
      puts("Title: #{book.title}, Author: #{book.author}")
    end
  end

  def list_all_people
    people.each do |person|
      puts("[#{person.is_a?(Student) ? "Student" : "Teacher"}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}")
    end
  end

end