require_relative 'app'

class Main
    attr_reader: app

    def initialize(app)
        @app = app
    end

    # def main
    #     loop do

    #     end
    # end

    def display_menu
        puts 'please choose an option by entering a nunmber'

        puts '1 - list all books'
        puts '2 - List all people'
        puts '3 - Create a person'
        puts '4 - Create a book'
        puts '5 - Create a rental'
        puts '6 - List all the rental for a given person id'
        puts '7 - Exit'
    end
end