#objectives
#pet will have a name and a cost
#user can view pets via menu
#menu will let you show cart
#

#Pick out all pets from a list
  # --->  make a method to display all the pets

@pets = [
  { animal: "dog", cost: 9 },
  { animal: "cat", cost: 10 },
  { animal: "fish", cost: 6 },
  { animal: "frog", cost: 5 },
  { animal: "bear", cost: 99 },
]

@cart = []

def show_pets
  puts "These are the pets we have in the store"
  @pets.each_with_index do | pet, index |
    puts "\n ##{index + 1}"
    puts "pet type: #{pet[:animal]}"
    puts "pet cost: $#{pet[:cost]}"
  end  
end

def choose_pet
  puts "choose a pet"

  choice = gets.to_i

  @cart << @pets[choice]
  puts "CART: "
  puts @cart
  main_menu
end

def show_cart
  puts "THIS IS YOUR CART!!!"
  @cart.each do | item |
    puts "\npet type: #{item[:animal]}"
    puts "pet cost: $#{item[:cost]}"
  end
  main_menu
end


def sell_pet
  puts "Filter out choice"
  choice = gets.chomp
  test = @pets.select { | pet | 
    pet[:animal] == choice
  }

  # puts @pets
  puts test
  # @pets.delete_at(choice - 1)
  main_menu
end

def main_menu
  puts "\nWelcome to the super awesome DPL pet store"
  puts "\n\n\nPlease make a selection:"
  puts "\n1. View All Pets"
  puts "\n2. Show Cart"
  puts "\n3. Sell Pet"
  
  choice = gets.to_i
  
  if choice == 1
    show_pets
    choose_pet
  elsif choice == 2
    show_cart
  elsif choice == 3
    show_pets
    sell_pet
  end
end

main_menu
