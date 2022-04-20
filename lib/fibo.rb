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

def fibs_rec(n)
    array = if n > 2 then fibs_rec(n-1) else return (0...n).to_a end 
    array << array[-2] + array[-1]
end




puts "Use of iteration"
puts fibs(8).inspect
puts "Use recursively"
p fibs_rec(8)