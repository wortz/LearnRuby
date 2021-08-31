def bubble_sort(array_sort)
  unless array_sort.length==1 # if the lenght is 1 then the array is already sorted
    loop do
      is_sorted = true
      for i in 0..array_sort.length-2 #end at lenght-2 so we can get the next element
        j=i+1
        if array_sort[i] > array_sort[j]
          array_sort[i], array_sort[j] = array_sort[j], array_sort[i] #Swap the elements
          is_sorted=false
        end
      end
      break if is_sorted
    end
  end
  array_sort
end


p bubble_sort([4,3,5,10,7,12,18,15,19,20,5,8,20,12,2,0,2])