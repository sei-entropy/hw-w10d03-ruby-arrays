#1- Return an array of each Student's full name, upper-cased
students = [
  {
      first_name: 'Renad',
      last_name: 'Alobaid'
  },
  {
      first_name: 'Roba',
      last_name: 'Arishi',
  },
  {
      first_name: 'Lama',
      last_name: 'Alaskar',
  }
]

upper_case_full_names = []
upper_case_full_names = students.map do |name| 
   full_name =  "#{name[:first_name]}  #{name[:last_name]}" 
full_name.upcase
 end 
#  OR
# students.each do |name| 
#     full_name =  "#{name[:first_name]}  #{name[:last_name]}" 
#     upper_case_full_names.push(full_name.upcase)
# end
# p upper_case_full_names
# 2-Find the first order for each user
users = [
  {
      name: 'Faisal',
      orders: [
          {
              description: 'a bike'
          }
      ]
  },
  {
      name: 'Huda',
      orders: [
          {
              description: 'bees'
          },
          {
              description: 'fishing rod'
          }
      ]
  },
  {
      name: 'Omar',
      orders: [
          {
              description: 'a MacBook'
          },
          {
              description: 'The West Wing DVDs'
          },
          {
              description: 'headphones'
          },
          {
              description: 'a kitten'
          }
      ]
  }
]

first_order_for_each_user = []
 first_order_for_each_user = users.map do |order| order[:orders][0] end
# OR
# users.each do |order|  
# first_order_for_each_user.push(order[:orders][0])
# end
  p first_order_for_each_user
# 3-Find the average amount spent on coffee, per transaction, for each person
people = [
  {
      name: 'Mohammed',
      transactions: [
          {
              type: 'COFFEE',
              amount: 7.43
          },
          {
              type: 'TACOS',
              amount: 14.65
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  },
  {
      name: 'Maimona',
      transactions: [
          {
              type: 'BIKES',
              amount: 800.00
          },
          {
              type: 'TACOS',
              amount: 14.65
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  },
  {
      name: 'Bedour',
      transactions: [
          {
              type: 'COFFEE',
              amount: 7.43
          },
          {
              type: 'COFFEE',
              amount: 100.00
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  }
]


coffee_average_per_person = []
people.each do |person| 
    coffee_average = 0 
    time = 0 
    person[:transactions].each do |transaction|
        if transaction[:type] == "COFFEE"
          coffee_average += transaction[:amount]
           time += 1
        end
    end
        coffee_average /= time
    coffee_average_per_person.push({name: person[:name], coffee_average: coffee_average})
end
#  p coffee_average_per_person
# 4-Find the most expensive product for each store, with the store name:

stores = [
  {
      store_name: 'Jarir',
      products: [
          {
              description: 'Titanium',
              price: 9384.33
          },
          {
              description: 'Gold',
              price: 345.54
          }
      ]
  },
  {
      store_name: 'Tamimi',
      products: [
          {
              description: 'Silver',
              price: 654.44
          },
          {
              description: 'Ruby',
              price: 323.43
          }
      ]
  },
  {
      store_name: 'Souq',
      products: [
          {
              description: 'Opal',
              price: 345.43
          },
          {
              description: 'Sapphire',
              price: 899.33
          }
      ]
  }
]

most_expensive_products_by_store = []
stores.each do |store| 
      larger = 0
    most_expensive_product = {}
     store[:products].each do |product|
              if (product[:price] > larger)
            larger = product[:price]
            most_expensive_product = product
        end
    end 
         most_expensive_products_by_store.push({ store_name: store[:store_name], most_expensive_product: most_expensive_product })
end

#  p most_expensive_products_by_store
# ---------------
# Bonus 
# Write an infinite loop that will make you add all the your friends in the students list and after 
# each add will ask if you want to quit the loop (yes/no) if the user choose no print all the students array

# input = "y"
# student_name = " "
# students = []
# puts "You must guess the Magic Words to exit the while loop!"
# until input == "n" do
#   puts "add a student"
# student_name = gets.chomp
#   puts "Do you want to continue ?"
# students.push(student_name)
#   input = gets.chomp
# end
# for student in students do 
#     puts " student :  #{student}"
# end
# puts "You made it out! Congrats!"



