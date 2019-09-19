class Student
    @@university = "Univ"
    
    attr_accessor :name, :last, :age, :email
    attr_reader :nr_card
    attr_writer :password

    def initialize(name, last, age)
        @name = name
        @last = last
        @age = age
        @email = email
        @nr_card = rand.to_s[2..7]
    end
    
    def show
        "#{name} #{last} #{age} #{email}"
    end
    
    def email
        "#{name}.#{last}@#{@@university}.com".downcase
    end
    
    def self.description
        "#{@@university} - is one of the oldest in Europe"
    end
end

john = Student.new("John", "Smith", 23)
anna = Student.new("Anna", "Potter", 20)
p Student.description
