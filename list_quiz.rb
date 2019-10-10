def three_even?(list)
    if list.size == 0
        return false
    end
    (list.size-2).times do |i|
        slice = list[i..(i+2)]
        # I had to check every number in the slice to see if it equaled an even number and the % had to equal 0
        if slice[0] % 2 == 0 && slice[1] % 2 == 0 && slice[2] % 2 == 0
            return true
        end
    end
    return false
end
puts three_even? ([2,1,3,5]) #false
puts three_even? ([2,4,12,5]) #true
puts three_even? ([2,1,4,6]) #false
puts three_even? ([1,4,6,4]) #true
puts three_even? ([]) #false


def bigger_two(list1,list2)
    total1=0
    total2=0
    list1.each do |n|
        total1 += n
    end
    list2.each do |m|
        total2 += m
    end
    if total1>total2
        return list1
    elsif total1<total2
        return list2
    elsif total1 == total2
        return list1
    end
end
print bigger_two([1,2],[3,4]), "\n" #[3,4]
print bigger_two([1,7],[4,4]), "\n" #[1,7]

def series_up(n)
    new_ary = []
    a = 1 #starting points
    b = 1 # starting points
    while a <= n #while loops will keep it going until the list reaches the right amount no matter what number the n is
        while b <= a # It will make it so it knows when to stop inputting numbers into the new list
            new_ary.push(b) # pushes 1 and any number above it until it reaches m so if m is 3 it will keep pushing numbers in order until it reaches 3
            b += 1 # makes the l increase until reaches m
        end
         
        b = 1 #makes the list print out 1 and 2 for example or 1, 2, and 3
        a += 1 # makes the m increase until reaches n
    end
    print new_ary, "\n"
end
series_up(1)
series_up(2)
series_up(3)
series_up(4)