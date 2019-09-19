class Dog < Canis
    attr_accessor :name, :age
    
    def initialize(name, age)
        @name = name
        @age = age
    end
    
    def bark
        'Hau' * age
    end
end

max = Dog.new("Max", 3)
