# Shortcut variables


def pet_shop_name(shop_input)
  return shop_input[:name]
end

def total_cash(shop_input)
  return shop_input[:admin][:total_cash]
end

def add_or_remove_cash(shop_input,money)
  shop_input[:admin][:total_cash] += money
end

def pets_sold(shop_input)
  return shop_input[:admin][:pets_sold]
end

def increase_pets_sold(shop_input,quantity_change)
  shop_input[:admin][:pets_sold] += quantity_change
end

def stock_count(shop_input)
  return shop_input[:pets].count
end

def pets_by_breed(shop_input,breed)
  pet_name_array = []
  for pet in shop_input[:pets]
    if pet[:breed] == breed
      pet_name_array << pet[:name]
    end
  end
  return pet_name_array
end

def find_pet_by_name(shop_input,pet_name)
  for pet in shop_input[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return
end

def remove_pet_by_name(shop_input,remove_pet)
  index_loop = 0
  for pet in shop_input[:pets]
    if pet[:name] == remove_pet
      shop_input[:pets].delete_at(index_loop)
    end
    index_loop += 1
  end
end

def add_pet_to_stock(shop_input,new_pet)
  shop_input[:pets] << new_pet
end

def customer_cash(customer_input)
  return customer_input[:cash]
end

def remove_customer_cash(customer_input,amount)
  customer_input[:cash] -= amount
end

def customer_pet_count(customer_input)
  return customer_input[:pets].count
end

def add_pet_to_customer(customer_input,new_pet)
  customer_input[:pets] << new_pet[:name]
end

def customer_can_afford_pet(customer_input,new_pet)
  if customer_input[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(shop,animal,customer)
  if animal == NIL
    return
  else
    if customer_can_afford_pet(customer,animal) == true
      add_pet_to_customer(customer,animal)
      remove_pet_by_name(shop,animal)
      increase_pets_sold(shop,1)
      remove_customer_cash(customer,animal[:price])
      add_or_remove_cash(shop,animal[:price])
    else
      return
    end
  end
end
