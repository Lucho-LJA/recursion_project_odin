def merge_sort(array)
    (array.length == 1 ? array : merge(
        merge_sort(array[0...(array.length/2)]), merge_sort(array[(array.length/2)..-1])
        ))
end
def merge(left, right)
    result = []
    until left.length == 0 || right.length == 0 do
      result << (left.first <= right.first ? left.shift : right.shift)
    end
    result + left + right
end


array_var = [50,2,56,1,3,2,0,200,100]
puts ("Merge sort to #{array_var}")
p merge_sort(array_var)