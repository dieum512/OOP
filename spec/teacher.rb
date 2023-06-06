require "./person.rb"

class Teacher < Person
    def initialize(age, name="Unknown", parent_permission=true, specialization="Unknown")
        @specialization = specialization
    end

    def can_use_services?
        true
    end
end