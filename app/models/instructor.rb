=begin
'Instructor' class:

init with name
return all instructors
Instructor.pass_student should take in a student name and test name and return status failed
Instructor.fail_student should take in a student name and test name and return status failed
Instructor.student_grade_percentage should take in a student first name and output the percentage of tests that they have passed
=end

class Instructor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.student_tests(student_name)
    BoatingTest.all.select do |test|
      test.student.first_name == student_name
    end
  end

  def self.pass_student(student_name,test_name)
    BoatingTest.all.each do |test|
      if test.student.first_name == student_name && test.name == test_name
        test.status = 'passed'
      end
    end
  end

  def self.fail_student(student_name,test_name)
    BoatingTest.all.map do |test|
      if test.student.first_name == student_name && test.name == test_name
        test.status = 'failed'
      end
    end
  end

  def self.student_grade_percentage(student_name)
    student_tests = student_tests(student_name)
    passed = 0
    student_tests.each do |test|
      if test.status == 'passed'
        passed += 1
      end
    end
    percentage = (passed.to_f/student_tests.length.to_f)*100
    "#{percentage.round(2)}%"
  end

end
