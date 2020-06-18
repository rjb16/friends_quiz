def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  for snack in person[:favourites][:snacks]
    if snack == food
      return true
    end
  end
  return false
end

def add_friend(person, new_friend)
  return person[:friends].push(new_friend).length
end

def remove_friend(person, removed_friend)
  person[:friends].delete(removed_friend)
  return person[:friends].length
end



def calculate_money(array_of_people)
  total_money = 0
  for person in array_of_people
    total_money += person[:monies]
  end
  return total_money
end

def lend_money(lender, lendee, amount_of_money)
  lender[:monies] = lender[:monies] - amount_of_money
  lendee[:monies] = lendee[:monies] + amount_of_money
  return new_money_amount = [lender[:monies], lendee[:monies]]
end