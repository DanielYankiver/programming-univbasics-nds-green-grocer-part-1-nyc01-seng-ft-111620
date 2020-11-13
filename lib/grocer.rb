def find_item_by_name_in_collection(name, collection)
  counter = 0 
  while counter < collection.length
    if collection[counter][:item] == name 
      return collection[counter]
    end 
    counter += 1
  end 
end

def consolidate_cart(cart) 
  new_cart = {} 
  cart.each do |items_array| 
    items_array.each do |item, attribute_hash| 
      new_cart[item] ||= attribute_hash 
      new_cart[item][:count] ? new_cart[item][:count] += 1 :   
      new_cart[item][:count] = 1 
  end 
end 
new_cart 
end


  