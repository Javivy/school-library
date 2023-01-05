require './decorator'

class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name.delete(' ')
  end
end
