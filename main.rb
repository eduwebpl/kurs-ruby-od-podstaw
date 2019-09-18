def hi(name)
    return 'Hello!' unless name
    "Witaj" + name + "!"
end

people = ["Julia", "Ada", nil, "Mark"]
people.each do |p|
    puts hi(p)
    puts 'Next one'
end

