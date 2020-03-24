# # 1. Return an array of each Student's full name, upper-cased
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

# upper_case_full_names = []

# upper_case_full_names= students.map{|student| 
# p student[:first_name].upcase+" "+student[:last_name].upcase
# student[:first_name].upcase+" "+student[:last_name].upcase}

# p upper_case_full_names


# # 2. Find the first order for each user
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

# first_order_for_each_user = users.map {|user| 
# p user[:orders][0]
# user[:orders][0]}

# p first_order_for_each_user


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


coffee_average_per_person = people.map{|people| 
all_amount=0
num=0
 people[:transactions].each{|invoice| 
 if invoice[:type]=='COFFEE'
    num+=1
    all_amount=all_amount+invoice[:amount]
 end   
 }

{name: people[:name],
coffee_amount: all_amount/num
}
}

p coffee_average_per_person
