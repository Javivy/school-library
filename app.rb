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

end