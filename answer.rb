# 1. Return an array of each Student's full name, upper-cased
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

students.map {|student| upper_case_full_names.push("#{student[:first_name].upcase} #{student[:last_name].upcase}")}
p upper_case_full_names


# ["RENAD ALOBAID", "ROBA ARISHI", "LAMA ALASKAR"]



# 2. Find the first order for each user

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

 users.map {|user| first_order_for_each_user.push(user[:orders].first)}
 p first_order_for_each_user
 
#  short answer
#  p first_order_for_each_user = users.map {|user| user[:orders].first}


# {:description=>"a bike"}
# {:description=>"bees"}
# {:description=>"a MacBook"}



# 3. Find the average amount spent on coffee, per transaction, for each person

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



coffee_average_per_person= people.map do |person| 
    amount=0
    count=0


    person[:transactions].each do |transaction|
     if transaction[:type]== "COFFEE"
        amount+= transaction[:amount]
        count+=1

    end 
end 

average = amount / count

{"name: #{person[:name]}, :coffee_average #{average}"}
end 
p coffee_average_per_person

# ["name: Mohammed, :coffee_average 5.93"
# "name: Maimona, :coffee_average 4.43"
# "name: Bedour, :coffee_average 37.28666666666667"]





# 4. Find the most expensive product for each store, with the store name:

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
    }  ]
        
]

most_expensive_products_by_store = []

most_expensive_products_by_store= stores.map do |store| 
    store[:products].each do |product|
        price= product[:price]
   
    end

    {"store_name #{store[:name]}, :most_expensive_product #{price.max}"}
end
p most_expensive_products_by_store 









# {:store_name=>"Jarir", :most_expensive_product=>{:description=>"Titanium", :price=>9384.33}}
# {:store_name=>"Tamimi", :most_expensive_product=>{:description=>"Silver", :price=>654.44}}
# # {:store_name=>"Souq", :most_expensive_product=>{:description=>"Sapphire", :price=>899.33}}