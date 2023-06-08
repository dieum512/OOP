require_relative 'nameable'
require_relative 'rental'

class Person < Nameable
  attr_accessor :id, :name, :age, :rental

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental = []
  end

  def correct_name
    @name
  end

  def add_rental(person, date)
    Rental.new(person, self, date)
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private :of_age?
end
