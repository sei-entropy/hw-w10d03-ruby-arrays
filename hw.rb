## 1. Return an array of each Student's full name, upper-cased

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


students.each do |i|
upper_case_full_names.push("#{i[:first_name].upcase} #{i[:last_name].upcase}")
end

p upper_case_full_names

# or

students.each {|i| upper_case_full_names.push("#{i[:first_name].upcase} #{i[:last_name].upcase}") }

p upper_case_full_names



## 2. Find the first order for each user



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

users.each do |i|
first_order_for_each_user.push(i[:orders].first)
end
p first_order_for_each_user


## 3. Find the average amount spent on coffee, per transaction, for each person



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

people.each do |i|
sum = 0
amount = 0
i[:transactions].each do |x|
if x[:type] == "COFFEE"
sum += x[:amount]
amount += 1
end
end
coffee_average_per_person.push({name: i[:name], coffe_average: sum / amount})
end

p coffee_average_per_person



## 4. Find the most expensive product for each store, with the store name:



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
description = ""
price = 0
store[:products].each do |i|
if i[:price] > price
description = i[:description]
price = i[:price]
end
end
most_expensive_products_by_store.push({store_name: store[:store_name], most_expensive_product: {description: description , price: price}})
end
p most_expensive_products_by_store


# Bonus

students = []

def print_students (students)
  loop do
    p "add a student"
    add_a_student = gets.chomp
    students.push(add_a_student)

    p "Do you want to continue ? (y/n)"
    continue = gets.chomp
    if continue == "n"
        students.each do |print_all_student|
          p "#{print_all_student}"
        end
        break

    end

end
end
print_students (students)