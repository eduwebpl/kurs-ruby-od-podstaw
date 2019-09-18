def hi(name)
    "Witaj" + name + "!"
end

people = ["Julia", "Ada", "Mark"]
people.each do |p|
    puts hi(p)
    puts 'Next one'
end

