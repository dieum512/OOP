require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'

class App
    def initialize
        @books = []
        @rentals = []
        @people = []
    end

    def list_all_books
        @books.each do |book|
            puts "Title: #{book.title}, Author: #{book.author}"
        end
    end

    def list_all_people
        @people.each do |people|
            puts "#{[people[0]]}, Name: #{people.name}, ID: #{people.id}, Age: #{people.age}"
        end
    end
    
end