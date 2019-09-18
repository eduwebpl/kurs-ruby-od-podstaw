class Student
    def initialize(name, last, age, email)
        @name = name
        @last = last
        @age = age
        @email = email
    end
    
    def show
        "#{@name} #{@last} #{@age} #{@email}"
    end
end

john = Student.new("John", "Smith", 23, "js@univ.com")
p john
puts john.show
