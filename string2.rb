#!/usr/bin/ruby

#Methods
def ModifyArray(array)
    item1 = "karhea"
    item2 = "kaneli"
    
    array.push(item1)#Add item
    array.delete(item2)#delete item with named kaneli
    return array.sort # return array in ascending order
end


#Main
fruits_spices = ["banaani", "turtana", "ananas", "kaneli", "unikko"]
puts ModifyArray(fruits_spices)