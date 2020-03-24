#Q) 1
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
#Solution 
uppercase = students.each do |elem|
    upper_case_full_names = "#{elem[:first_name]} #{elem[:last_name]}"
    upper_case_full_names = upper_case_full_names.upcase
   puts  upper_case_full_names
end
# Result 
# RENAD ALOBAID
# ROBA ARISHI
# LAMA ALASKAR

#Q) 2
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
#solution 
first_order_for_each_user = users.map {|elem| elem[:orders][0] }
puts first_order_for_each_user 
# Result 
# {:description=>"a bike"}
# {:description=>"bees"}
# {:description=>"a MacBook"}

#Q)3
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
#Solution 
coffee_average_per_person = people.map {|person| 
all_amount=0
no_Cofee =0
person[:transactions].each{|product| 
if product [:type]== 'COFFEE'
   all_amount=all_amount+ product[:amount]
   no_Cofee=no_Cofee+1
end 
}
{name: person[:name],coffee_average: all_amount/no_Cofee}  
} 
 puts coffee_average_per_person 
# Result 
# {:name=>"Mohammed", :coffee_average=>5.93}
# {:name=>"Maimona", :coffee_average=>4.43}
# {:name=>"Bedour", :coffee_average=>37.28666666666667}

#Q)4
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
#Solution 
most_expensive_products_by_store = stores.map{|store| 
description=""
price =0
store[:products].each{|element| 
if element [:price]> price
    description= element[:description]
    price =element[:price] 
end 
    }

{ store_name: store[:store_name] , most_expensive_product:{description: description , price: price} } 

}
p most_expensive_products_by_store

# Result 
# [{:store_name=>"Jarir", :most_expensive_product=>{:description=>"Titanium", :price=>9384.33}},
#  {:store_name=>"Tamimi", :most_expensive_product=>{:description=>"Silver", :price=>654.44}}, 
#  {:store_name=>"Souq", :most_expensive_product=>{:description=>"Sapphire", :price=>899.33}}]