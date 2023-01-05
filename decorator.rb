require './nameable.rb'

class Decorator < Nameable
  def initialize(nameable)
    @component = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end