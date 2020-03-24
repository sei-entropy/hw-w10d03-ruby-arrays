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

# upper_case_full_names = students.map do |student|

#    p "#{student[:first_name].upcase} #{student[:last_name].upcase}"
  
#   end


#============================================================


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

# first_order_for_each_user = users.map do |user|

#    p "#{user[:orders][0]}"

# end

#=========================================================

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


# coffee_average_per_person = []


# average_per_person = people.map do |people|
#     coffee = 0  
#     count = 0
#     people[:transactions].each do |transactions|
#         if transactions[:type] == "COFFEE" 
#             coffee += transactions[:amount] 
#             count += 1
#     end    
#   end
#   coffee =coffee/ count
# {
#     people: people[:name],
#     coffee_average: coffee
# }
# end
#   coffee_average_per_person.push(average_per_person)
#   p coffee_average_per_person


#=======================================================
# stores = [
#   {
#       store_name: 'Jarir',
#       products: [
#           {
#               description: 'Titanium',
#               price: 9384.33
#           },
#           {
#               description: 'Gold',
#               price: 345.54
#           }
#       ]
#   },
#   {
#       store_name: 'Tamimi',
#       products: [
#           {
#               description: 'Silver',
#               price: 654.44
#           },
#           {
#               description: 'Ruby',
#               price: 323.43
#           }
#       ]
#   },
#   {
#       store_name: 'Souq',
#       products: [
#           {
#               description: 'Opal',
#               price: 345.43
#           },
#           {
#               description: 'Sapphire',
#               price: 899.33
#           }
#       ]
#   }
# ]

# most_expensive_products_by_store = []

# most_expensive_products_by_store = stores.map do |store|

#     max_price = 0
#     description = ""
  
#     store[:products].each do |product|

#       if max_price < product[:price]
#         max_price   = product[:price]
#         description = product[:description]
#       end
#     end

#     {
#     store_name: store[:store_name],
#     product:
#      { description: description,
#        price: max_price }
# }
#   end
  
#   p most_expensive_products_by_store


#=============================================

# student = []
# count =1

# p "add a student"
# first_student = gets.chomp
# student.push(first_student)
# while  

# p "Do you want to continue ? (y/n)"
# input = gets.chomp

# if input == "y"
#     p "add a student"
#     student_name = gets.chomp
#     student.push(student_name)

# else
#     p student
# end
# end
