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
    
    def add_student
        puts 'Age: '
        age = gets.chomp
        puts 'Name: '
        name = gets.chomp
        puts 'Has parent permission? [Y/N]: '
        parent_permission = gets.chomp

        student = Student.new(age, name, parent_permission)

        @people.push(['student', student])
    end

    def add_teacher
        puts 'Age: '
        age = gets.chomp
        puts 'Name: '
        name = gets.chomp
        puts 'Specialization'
        specialization = gets.chomp

        teacher = Teacher.new(age, specialization, name)

        @people.push(['teacher', teacher])
    end

    def create_book
        puts 'Title: '
        title = gets.chomp
        puts 'Author: '
        author = gets.chomp

        book = Book.new(title, author)

        @book.push('book', book)
        puts 'Book created successfully'
    end

    def add_person
        puts 'Do you want to createte a student(1), or a teacher(2)? [Input the number]: '
        person = gets.chomp
        if person == '1'
            add_student
            puts 'Student created successfully'
        elsif person == '2'
            add_teacher
            puts 'Teacher created succesfully'
        else
            puts 'Invalid Value'
        end
    end
end