class Book
    attr_accessor :title, :author

    def initialize(title, author, rental)
        @title = title
        @author = author
        @rental = []
    end
end