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
