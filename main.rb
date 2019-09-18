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
        "#{@name} #{@last} #{@age} #{@email}"
    end
    
    def discount
        return '-25%' unless @age > 26
        'sorry no discount'
    end
end

john = Student.new("Jon", "Smith", 23, "js@univ.com")


