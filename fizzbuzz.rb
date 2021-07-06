def fizzbuzz (number)
    i = 0
    loop do
        i = i + 1
        output = ""
        if i % 3 == 0
            output += "fizz"
        end
        if i % 5 == 0
            output += "buzz"
        end
        if output == ""
            output = i
        end
        puts output
        if i == number
            break
        end
    end
end

fizzbuzz(100)