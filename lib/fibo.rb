def fibs(n)
    array = [0,1]
    if n == 1 then return [0] end 
    if n == 2 then return [0,1] end
    if n > 1
        for i in 2...n do
            array << array[i-1] + array[i-2]
        end
    end
    array
end

puts "Use of iteration"
puts fibs(8).inspect