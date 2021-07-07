class Timer

    def popup (message)

        loop do

            time = Time.new

            if time.usec == 0
                puts message

            elsif time.sec == 10
                break

            end
        end

    end
end

time = Timer.new

time.popup("Message")