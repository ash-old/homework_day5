#1
def pet_shop_name(pet_shop)
    return pet_shop[:name]
end

#2
def total_cash(pet_shop)
    return pet_shop[:admin][:total_cash]
end

#3
def add_or_remove_cash(pet_shop, sum)
  pet_shop[:admin][:total_cash] += sum
end

#4
def remove_cash(pet_shop, sum)
  pet_shop[:admin][:total_cash] -= sum
end

#5
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

#6
def increase_pets_sold(pet_shop, sum)
  pet_shop[:admin][:pets_sold] += sum
end

#7
def stock_count(pet_shop)
  pet_shop[:pets].count
end

#8,9
def pets_by_breed(pet_shop, search)
  found = []
  for pet in pet_shop[:pets]
    if pet[:breed] == search
      found.push(pet)
    end
  end
  return found
end

#10
def find_pet_by_name(pet_shop, search)
  find_pet = nil
  for pet in pet_shop[:pets]
    if pet[:name] == search
      return pet
    end
  end
  return find_pet
end

#11
# def remove_pet_by_name(pet_shop, search)
#   find_pet = nil
#   for pet in pet_shop[:pets]
#     if pet[:name] == search
#       pet.each()
#     end
#     return find_pet
#   end
# end

#12
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

#13
def customer_cash(customers)
  return customers[:cash]
end

#14
def remove_customer_cash(customers, amount)
  return customers[:cash] -= amount
end

#15
def customer_pet_count(customers)
   return customers[:pets].count
end

#16
def add_pet_to_customer(customers, new_pet)
  customers[:pets].push(new_pet)
end

#optional

def customer_can_afford_pet(customer, new_pet)
  can_buy_pet = true
  for person in customer
    if customer[:cash] >= new_pet[:price]
      return can_buy_pet
    end
  end
  return false
end
