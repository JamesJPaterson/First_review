class Counter 
    def initialise(input)
        @input = input
        @redcount = 0
        @greencount = 0
        @ambercount = 0
    end

    def set(string)
        @input = string
    end

    def count
        @redcount = @input.scan('Red').count
        @greencount = @input.scan('Green').count
        @ambercount = @input.scan('Amber').count

        return @greencount
    end

    def output
        return "Green: " + @greencount.to_s + ", " + "Amber: " + @ambercount.to_s + ", " + "Red: " + @redcount.to_s
    end
end