def fizz_buzz(n)
    i = 1
    output_arr = []
    until n < i
        if (i % 3 == 0 && i % 5 == 0)
            output_arr << "FizzBuzz"
        elsif (i % 3 == 0) 
            output_arr << "Fizz"
        elsif (i % 5) == 0
            output_arr << "Buzz"
        else
            output_arr << i.to_s()
        end
        i += 1
    end
    output_arr
end

p fizz_buzz(15)