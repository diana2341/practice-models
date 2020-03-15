class Course < ActiveRecord::Base
    has_many :schools
    has_many :students, through: :schools

    def self.all_subject_names
        self.all.map do |course|
            course.subject
        end
        
    end
        
    
    def self.number_of_subjects
        self.all.map do |courses|
            courses.subject.split.length
        end.sum
    end
    def school_name_with_course
        self.schools.map do |school|
            school.name #beacause its a joiner table , ActiveRecord usually acces thhe foreign keys and doesnt
            #pay attention to other atributes, so we have to iterate through to use the other attributes, like here for name
        end

        
    end
    def num_of_students_in_course#use second student to test 
        self.students.count
    end

    
end