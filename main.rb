class Student
    attr_accessor :name, :last, :age, :email, :nickname
    attr_reader :nr_card
    attr_writer :password

    def initialize(name, last, age, email, nickname)
        @name = name
        @last = last
        @age = age
        @email = email
        @nickname = nickname
        @nr_card = rand.to_s[2..7]
    end
    
    def show
        "#{name} #{last} #{age} #{email} #{nickname}"
    end
    
    def reset(password, nickname)
        self.password = password
        self.nickname = nickname
    end
end

john = Student.new("John", "Smith", 23, "js@univ.com", "jon")
anna = Student.new("Anna", "Potter", 20, "an@univ.com", "anap")

p john.show
john.reset('topsecret', 'smooth')
p john.show
