class Student < ApplicationRecord
    before_create :add_marks, :capitalize_name
    before_update :add_marks, :capitalize_name
    validates :firstName, :marks1, :marks2, :marks3, presence: true
    has_one :student_profile

    def capitalize_name
        self.firstName = firstName.capitalize
    end

    def add_marks
        self.total = marks1 + marks2 + marks3
    end
end
