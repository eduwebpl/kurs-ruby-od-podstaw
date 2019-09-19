class Student
    attr_accessor :name, :last, :age, :email
    attr_reader :nr_card, :exam_result
    attr_writer :password

    def initialize(name, last, age, email)
        @name = name
        @last = last
        @age = age
        @email = email
        @nr_card = generate_card_number
        @exam_result = rand(0..100)
    end
    
    def show
        "#{@name} #{@last} #{@age} #{@email}"
    end
    
    def discount
        return '-25%' unless @age > 26
        'sorry no discount'
    end
    
    def compare(user)
       @exam_result > user.exam_result ? @name : user.name
    end
    
    protected
    
    def exam_result
        @exam_result
    end

    private
    
    def generate_card_number
        start = ('A'..'Z').to_a.shuffle[0]
        numbers = rand.to_s[2..7]
        stop = ('a'..'z').to_a.shuffle[0]
        "#{start}_#{numbers}_#{stop}"
    end
end

john = Student.new("John", "Smith", 23, "js@univ.com")
anna = Student.new("Anna", "Potter", 20, "an@univ.com")

p john.compare(anna)
p john.exam_result
