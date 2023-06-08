require_relative 'rental'

class Book
    attr_accessor :title, :author, :rental

    def initialize(title, author, rental)
        @title = title
        @author = author
        @rental = []
    end

    def add_rental(person, date)
        Rental.new(person, self, date)
    end
end