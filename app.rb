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

upper_case_full_names= students.map do |element|
     element[:first_name].upcase + " " +  element[:last_name].upcase 
end 

puts upper_case_full_names

# >>outputs 
# RENAD ALOBAID
# ROBA ARISHI
# LAMA ALASKAR

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

first_order_for_each_user= users.map do |element|
     element[:orders].first
end 

puts first_order_for_each_user


# >>outputs
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

coffee_average_per_person = people.map do |element| 
    all_amount=[]

     element[:transactions].each do |value|
        if value[:type] =="COFFEE"
        all_amount.push(value[:amount] )
        end 
        end
        all_amount= all_amount.inject{ |sum, el| sum + el }.to_f / all_amount.size
    { name: element[:name] , coffee_average: all_amount  } 
end 

 puts coffee_average_per_person 

# >>>outputs
# {:name=>"Mohammed", :coffee_average=>5.93}
# {:name=>"Maimona", :coffee_average=>4.43}
# {:name=>"Bedour", :coffee_average=>37.28666666666667}


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
            description: 'Sapphire',
            price: 899.33
        },
          {
              description: 'Opal',
              price: 345.43
          }
      ]
  }
]

most_expensive_products_by_store = []


most_expensive_products_by_store = stores.map do |element| 
     
    most_expensive_price = 0 
    new_object_arr = []

      element[:products].each do |value|
        price= value[:price]
         price
         most_expensive_price
      if most_expensive_price < price
         "enterd the IF"
         most_expensive_price = price
         new_object_arr.push({ description:value[:description], price: most_expensive_price })
      end 

    end 
   
  { store_name: element[:store_name] , most_expensive_product: new_object_arr } 
end 

 puts most_expensive_products_by_store

 # >>>>>output
 {:store_name=>"Jarir", :most_expensive_product=>[{:description=>"Titanium", :price=>9384.33}]}
 {:store_name=>"Tamimi", :most_expensive_product=>[{:description=>"Silver", :price=>654.44}]}
 {:store_name=>"Souq", :most_expensive_product=>[{:description=>"Sapphire", :price=>899.33}]}