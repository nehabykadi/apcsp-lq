def three_even?(list)
    count = 0
    count2 = 0
    if list.size == 0
        return false
    end
    (list.size-2).times do |i|
        slice2 = list[i..(i+2)]
        slice2.each do |n|
            count += n
        end
        if count % 2 == 1
            count2 += 1
        end
    end
    if count2 >=1
        return true
    else
        return false
    end
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
print bigger_two([1,2],[3,4]) #[3,4]
print bigger_two([1,7],[4,4]) #[1,7]

def series_up(n)
    ary=[1,2,3,4,5,6,7,8,9,10]
    new_array = []
    n.times do |i|
        new_array.push(ary[i])
    end
    print new_array, "\n"
end
series_up(1)
series_up(2)
series_up(3)
series_up(4)