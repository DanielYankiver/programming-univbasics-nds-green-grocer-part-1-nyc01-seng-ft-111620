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
  output = {}
  cart.each do |item|
    item_name = item.keys[0]
    if output[item_name]
      output[item_name][:count] += 1 
    else
      output[item_name] = item[item_name]
      output[item_name][:count] = 1 
    end
  end
  output
end


  