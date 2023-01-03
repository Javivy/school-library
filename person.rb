class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(name = "Unknown", parent_permission = true, age)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    if is_of_age? || parent_permission
      return true
   else
      return false
   end
  end

  private 

  def is_of_age?
    return @age >= 18
  end
end

person_1 = Person.new("Pedro", true, 18)


