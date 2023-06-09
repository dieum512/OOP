require_relative 'app'

class Main
    attr_reader: app

    def initialize(app)
        @app = app
    end

    def main
        loop do
            display_menu
            menu = gets.chomp.to_i
            menu_choice(menu)
            break if menu == 7
        end
    end

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

    def menu_choice(menu)
        menu_actions = {
            1 => :list_all_books,
            2 => :list_all_people,
            3 => :add_person,
            5 => :create_rental,
            6 => :list_all_rentals,
            7 => :exit
        }

        action = menu_actions[menu]
        if action
            if action == :exit
                puts 'Thanks for using the app!'
                exit
            else
                @app.send(action)
            end
        else
            puts 'Invalid value. Please try again'
        end
    end
end

app = App.new
myapp = Main.new
myapp.main