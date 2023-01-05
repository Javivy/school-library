require './nameable.rb'
require './capitalize_decorator.rb'
require './trimmer_decorator.rb'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name: "Unknown", parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    @name
  end 

  def can_use_services?
    return true if of_age? || parent_permission

    false
  end

  private

  def of_age?
    @age >= 18
  end
end
