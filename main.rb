# students = [
#   {
#       first_name: 'Renad',
#       last_name: 'Alobaid'
#   },
#   {
#       first_name: 'Roba',
#       last_name: 'Arishi',
#   },
#   {
#       first_name: 'Lama',
#       last_name: 'Alaskar',
#   }
# ]

# upper_case_full_names = students.map do |name| 
#     "#{name[:first_name].upcase} #{name[:last_name].upcase}"
# end

# p upper_case_full_names


######################################

# users = [
#   {
#       name: 'Faisal',
#       orders: [
#           {
#               description: 'a bike'
#           }
#       ]
#   },
#   {
#       name: 'Huda',
#       orders: [
#           {
#               description: 'bees'
#           },
#           {
#               description: 'fishing rod'
#           }
#       ]
#   },
#   {
#       name: 'Omar',
#       orders: [
#           {
#               description: 'a MacBook'
#           },
#           {
#               description: 'The West Wing DVDs'
#           },
#           {
#               description: 'headphones'
#           },
#           {
#               description: 'a kitten'
#           }
#       ]
#   }
# ]

# first_order_for_each_user = []

# users.each do |user|
#     p user[:orders].first
# end

##############################################

# people = [
#   {
#       name: 'Mohammed',
#       transactions: [
#           {
#               type: 'COFFEE',
#               amount: 7.43
#           },
#           {
#               type: 'TACOS',
#               amount: 14.65
#           },
#           {
#               type: 'COFFEE',
#               amount: 4.43
#           }
#       ]
#   },
#   {
#       name: 'Maimona',
#       transactions: [
#           {
#               type: 'BIKES',
#               amount: 800.00
#           },
#           {
#               type: 'TACOS',
#               amount: 14.65
#           },
#           {
#               type: 'COFFEE',
#               amount: 4.43
#           }
#       ]
#   },
#   {
#       name: 'Bedour',
#       transactions: [
#           {
#               type: 'COFFEE',
#               amount: 7.43
#           },
#           {
#               type: 'COFFEE',
#               amount: 100.00
#           },
#           {
#               type: 'COFFEE',
#               amount: 4.43
#           }
#       ]
#   }
# ]


# coffee_average_per_person = people.map do |person|
#     count = 0
#     sum = 0
#    
#      person[:transactions].each do |i|
#        if i[:type] == "COFFEE"
#         count +=1
#         sum += i[:amount]
#        end
#     end
#     sum/ count 
# {
#     person: person[:person]
#     coffee_average: sum
# }
 
# end

# p coffee_average_per_person

################################################


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

most_expensive_products_by_store = stores.map do |s|
    max = 0
    description = ""
    s[:products].each do |i|
       if max <  i[:price]
          max = i[:price]
          description = i[:description]
       end
    
    end
    {
    store_name:s[:store_name],
    most_expensive_products:{description:description,price:max }
    }
  
end
p most_expensive_products_by_store 