require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
kris = Student.new('kris')
forrest = Student.new('forrest')
lila = Student.new('lila')
garry = Instructor.new('garry')
evans = Instructor.new('evans')

kris.add_boating_test('test1','new',garry)
kris.add_boating_test('test2','new',evans)
kris.add_boating_test('test3','new',evans)
forrest.add_boating_test('test1','new',garry)
forrest.add_boating_test('test2','new',garry)
forrest.add_boating_test('test3','new',evans)
Instructor.pass_student('kris','test2')
Instructor.student_tests('kris')
Instructor.student_grade_percentage('kris')
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
