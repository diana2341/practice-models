class School < ActiveRecord::Base
    belongs_to :student
    belongs_to :course
    def self.school_names
        self.all.map do |school|
            school.name 
        end
    end
    
    def self.total_num_of_students
        self.all.map do |school|
           school.course.num_of_students
        
                       
            
        end.sum

    end


    def student_of_school
        self.student.name
    end

    def course_subject_of_school
        self.course.subject
    end


end