Student.destroy_all
School.destroy_all
Course.destroy_all

s1 = Student.create(name: "sam", age: 20, gender: "female")
s2 = Student.create(name: "Dan", age: 30, gender: "female")
s3 = Student.create(name: "karina", age: 20, gender: "female")
s4 = Student.create(name: "Diana", age: 40, gender: "female")
s5 = Student.create(name: "chris", age: 50, gender: "male")
s6 = Student.create(name: "Dan", age: 20, gender: "male")
s7 = Student.create(name: "brian", age: 30, gender: "male")


course1 = Course.create(subject:"science", pass:true, schedule:2,num_of_students:20)
course2 = Course.create(subject:"math", pass:true, schedule:1, num_of_students:20)
course3 = Course.create(subject:"sociology", pass:false, schedule:2, num_of_students:30)
course4 = Course.create(subject:"psychology", pass:false, schedule:1, num_of_students:40)
course5 = Course.create(subject:"art", pass:true, schedule:1, num_of_students:50)
course6 = Course.create(subject:"gym", pass:true, schedule:3, num_of_students:60)
course7 = Course.create(subject:"computer", pass:true, schedule:2, num_of_students:20)

school1 = School.create(name: "Brentwood school",location:"brentwood" ,student_id: s1.id , course_id: course1.id )
school2 = School.create(name: "babylon school",location:"babylon" ,student_id:s1.id , course_id:course2.id )
school3 = School.create(name: "hicksville school",location:"hicksville" ,student_id:s2.id , course_id: course3.id)
school4 = School.create(name: "bayshore school",location:"bayshore" ,student_id:s1.id , course_id:course2.id )
school5 = School.create(name: "deer park school",location:"deer park" ,student_id:s3.id , course_id:course7.id )
school6 = School.create(name: "suffolk school",location:"brentwood" ,student_id:s4.id , course_id:course6.id )
school7 = School.create(name: "nassau school",location:"hicksville" ,student_id:s5.id , course_id:course3.id )



