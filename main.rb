class Canis
    @@paw = 4
    
    def initialize
        puts 'Canis is a genus, family: Canidae'
    end
    
    def description
        puts "Massive, beautiful & dangerous"
    end
end

class Dog < Canis
    attr_accessor :name, :age
    
    def initialize(name, age)
        @name = name
        @age = age
    end
    
    def bark
        'Hau' * age
    end
    
    def description
        puts "Cute and friendly"
    end
    
    def paws
        @@paw
    end
end

max = Dog.new('Max', 3)
max.description
p max.paws

wolf = Canis.new
wolf.description

