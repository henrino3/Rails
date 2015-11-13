class Y
    def who
        puts "I belong to Y"
    end
end

class X < Y
    def initialize(j)
        puts "#{j}"
    end

    def M(j)
        puts "I am M taking #{j}"
    end

    @K = "jerry"



    foo = X.new("Henry")

    foo.M("Mascot")

#    Q = foo.K

    puts Q
end
