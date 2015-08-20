require_relative '../app/models/teacher_student'

module StudentsAssign
  def self.assign
    students = Student.all
    teachers = Teacher.all

    teachers.each do |teacher|

    80.times do
    random_teacher = rand(teachers.size)
    random_student = rand(students.size)

    if TeacherStudent.find_by(teacher_id: teacher[:id], student_id: students[random_student][:id]).nil?
       TeacherStudent.create(teacher_id: random_teacher, student_id: random_student)
      else
       redo
      end
     end
    end
  end
end


