class School

  def initialize
    @students_by_grade = {}
  end

  def enroll(student, grade)
    @students_by_grade[grade] = students_in_grade(grade) + [student]
  end

  def students_in_grade(grade)
    students = @students_by_grade[grade]
    if students.nil?
      []
    else
      students.sort
    end
  end

  def print_students_in_grade(grade)
    students = students_in_grade(grade)
    if students.empty?
      puts "Currently, there are no students enrolled in grade ##{grade}."
    else
      puts "The students in grade ##{grade} are: " + students.join(", ")
    end
  end

  def print_students_by_grade
    puts "The following students are currently enrolled in your school:"
    grades.each do |grade|
      print_students_in_grade(grade)
    end
  end

  def grades
    @students_by_grade.keys.sort
  end

end

school = School.new

school.enroll('Jim', 2)
school.enroll('Bob', 2)
school.enroll('Bart', 3)
school.enroll('Alice', 3)

school.print_students_in_grade(2)

school.print_students_in_grade(42)

school.print_students_by_grade
