def bubble_sort(array)
  track = 1
  timesMissed = 0
  array.each do |v|
    array.each_with_index do |x, i| ## why skips to 2 cuz 4 is less than 78 
          # if i + timesMissed == array.length ## Why isnt this working? Why isnt i getting to array length
          #   timesMissed = 0 
          #   break
          # else
          # ## As long as i + 1 is less than a variable we set(equal to the length of the array in the beginning)then were good to go
          ## After the outer loop iteration we make it less to take into account the rightemost value being sorted
          #
             
            if x > array[i + 1] 
              p i
              p "#{x} > #{array[i + 1]} ??"
              p "yes"
              array[i], array[i + 1] = array[i + 1], array[i]
              p array
            else
              timesMissed += 1
              next
            end

          end

         

      
     
    end
    break if track == array.length - 1
    track += 1
    
  end
   return array 
    
   

  

end

 p bubble_sort([4,3,78,2,0,2])

 ## On the first iteration
 ## Swap places if current item is greater than second
 ## Now we know that the first item is sorted to its right place
 ## iteration to the length of the array minus the current iteration + 1 will give us the right amount of items to loop
 #as the rightemost element would be in its correct spot.
 ##  