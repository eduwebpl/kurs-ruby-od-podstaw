class Animal
    attr_accessor :sound

    def initialize(sound)
        @sound = sound
    end

    def poop
        raise NotImplementedError, "You must implement method - poop"
    end
end

class Horse < Animal
    def poop
        puts "Poop poop..."
    end
end

class Unicorn < Animal
    def poop
        puts "Rainboooowwww"
    end
end

horse = Horse.new('neigh')
unicorn = Unicorn.new('banana')

def give_sound(sound)
    sound * 4
end

p give_sound(horse.sound)
p give_sound(unicorn.sound)

