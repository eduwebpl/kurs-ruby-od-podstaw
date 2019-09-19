module FindNumber
    def max_of_2(x, y)
        x > y ? x : y
    end
    
    def max_of_3(a, b, c) 
        max_of_2(max_of_2(a,b), c)
    end
end

class Rectangle
    include FindNumber
end

class Triangle
    include FindNumber
end

r = Rectangle.new
t = Triangle.new

p r.max_of_3(3, 4, 7)
p t.max_of_3(12, 8, 20)





