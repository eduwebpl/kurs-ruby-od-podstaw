class Student
    attr_accessor :name, :last, :age, :email
    attr_reader :nr_card
    attr_writer :password

    def initialize(name, last, age, email)
        @name = name
        @last = last
        @age = age
        @email = email
        @nr_card = rand.to_s[2..7]
    end
    
    def show
        "#{name} #{last} #{age} #{email}"
    end
end

john = Student.new("John", "Smith", 23, "js@univ.com")
anna = Student.new("Anna", "Potter", 20, "an@univ.com")

p john.show
