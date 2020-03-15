class Student < ActiveRecord::Base
    has_many :schools
    has_many :courses, through: :schools

   def subjects_a_student_has
    self.courses.map{|course|course.subject}
   end
   def school_name_attending
    self.schools.map{|school|school.name}
   end 
   def self.all_names
    self.all.map {|student|student.name}
   end
   def self.num_of_students_who_are_twenty
    self.all.select do |student|
         student.age == 20 
        
        end.count
   end

end