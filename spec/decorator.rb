require './nameable'

class Decorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator
  def correct_name
    name = @nameable.correct_name.capitalize[0..9]
    name.length <= @nameable.correct_name.capitalize.length ? "#{name}..." : name
  end
end
