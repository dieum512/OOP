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