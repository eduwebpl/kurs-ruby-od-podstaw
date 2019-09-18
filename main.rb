class Student
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
    
    def name
        @name
    end
    
    def name=(new_name)
        @name = new_name
    end
    
    def last
        @last
    end
    
    def last=(new_last)
        @last_name
    end
    
    def age
        @age
    end
    
    def age=(new_age)
        @last = new_last
    end
    
    def email
        @email
    end
    
    def email=(new_emai)
        @email = new_email
    end

    def nr_card
        @nr_card
    end
    
    def password=(new_password)
        @password = new_password
    end
end

john = Student.new("Jon", "Smith", 23, "js@univ.com")
p john
puts john.show
