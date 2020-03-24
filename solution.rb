# Return an array of each Student's full name, upper-cased 

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


 students.each do |student|
    full_names = "#{student[:first_name]} #{student[:last_name]}"
    upcase_name= full_names.upcase
    upper_case_full_names.push(upcase_name)
end
puts upper_case_full_names


#2. Find the first order for each user
 
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
  
  first_order_for_each_user = users.map do |first_order|
       "#{first_order[:orders].first}"
  end
  
  puts first_order_for_each_user
  


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

coffee_cupps = 0
coffe_total_price=0

coffee_average_per_person = people.map do |person|

    person[:transactions].each do |item| 
        if item[:type] == "COFFEE" 
            coffee_cupps+=1
            coffe_total_price+=item[:amount]
        end 
    end
{ 
    name: person[:name],
    average: (coffe_total_price/coffee_cupps)
}
end 

puts coffee_average_per_person 


#4. Find the most expensive product for each store, with the store name:


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


most_expensive_products=stores.map do |product|

    expensive_price=0
    store=product[:store_name]    
    description=" "

    product[:products].each do |item| 
       
        if item[:price] > expensive_price
            expensive_price=item[:price]
            description = item[:description]

        end
    end
    { 
    name: store,
    most_expensive_product: description,
    price:expensive_price
}

end

puts most_expensive_products


#Bonus :

students=[]
input_student =" "
input_answer =" "
while input_answer != "n" do
puts "add a student"
input_student = gets.chomp
students.push(input_student)
puts "Do you want to continue ? (y/n)"
input_answer = gets.chomp
if input_answer != ("y" || "n")
    puts "try again"
    puts "Do you want to continue ? (y/n)"
    input_answer = gets.chomp
  end
  
end
puts "========================="
puts students