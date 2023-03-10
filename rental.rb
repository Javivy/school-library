class Rental
  attr_accessor :date
  attr_reader :person, :book

  def initialize(date, person, book)
    @date = date

    @person = person
    person.rentals << self

    @book = book
    book.rentals << self
  end

  def person=(person)
    @person = person
    person.rentals.push(self) unless person.rentals.include?(self)
  end

  def book=(book)
    @book = book
    book.rentals.push(self) unless book.rentals.include?(self)
  end
end
