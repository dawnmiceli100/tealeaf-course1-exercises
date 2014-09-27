# student.rb

class Student
  

  def initialize (name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(n)
    #true if grade > n.grade
    grade > n.grade # don't need to set true because statement will evaluate to true
  end  
  
  protected

  def grade
    @grade
  end

end

joe = Student.new("Joe", 100)
bob = Student.new("Bob", 90)

puts "Well done!" if joe.better_grade_than?(bob)  
    

