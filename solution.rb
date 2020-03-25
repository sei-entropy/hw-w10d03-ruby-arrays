# Q1: Return an array of each Student's full name, upper-cased
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


  # Make a copy of the original array but without the bang, we don't want to change the original!
  upper_case_full_names = students.map do |student|
    # Return the first name upper-cased and concatenated to the upper-cased last name
    "#{student[:first_name].upcase} #{student[:last_name].upcase}"
  end

# Print the array
upper_case_full_names.each{ |name| puts name}



###################################################################



# Q2: Find the first order for each user
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
  
# Make a copy of the original array with map
first_order_for_each_user = users.map do |user|
    # Access index zero of each order for each user
    user[:orders][0]
end

# print the array
first_order_for_each_user.each { |order| puts order}



###################################################################



# Q3: Find the average amount spent on coffee, per transaction, for each person
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
  
  
  coffee_average_per_person = people.map do |person|
    
    # Declare a variable to hold the sum of coffees and one for number of coffees per person
    sum = 0.0
    num_coffe_type = 0

    # Loop through each transaction
    person[:transactions].each do |transaction| 
        # If the type of the transaction is coffee >> add the amount to the sum and increment the number of coffees
        if transaction[:type].eql?('COFFEE')
            sum += transaction[:amount] 
            num_coffe_type += 1
        end 
    end
    
    # Return an object that contains the name, and the coffee average of each person
    {
        name: person[:name],
        coffee_average: sum/num_coffe_type
    }
  end

  # Print the array
  coffee_average_per_person.each { |person| puts person }
  


###################################################################


# Q4: Find the most expensive product for each store, with the store name:
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
  
  # Copy the original array
  most_expensive_products_by_store = stores.map do |store|
    # Return object with the name of the store and the most expensive product
    {
        store_name: store[:store_name],
        # Max_by returns the maximum value of the price in the products array in each store
        most_expensive_product: store[:products].max_by { |product| product[:price]}
    }
  end

    # Print the array
    most_expensive_products_by_store.each { |store| puts store}
  

###################################################################

# Bonus:
# Write an infinite loop that will make you add all the your friends in the students list and after each add will ask if you want to quit the loop (yes/no) if the user choose no print all the students array

student_list = []

# Define a flag to break from the loop
exit = "y"
# until the user inputs no, as if he/she doesn't want to continue, continue do the following
until exit == "n" do
    puts "Add a student:"
    # get student name
    student = gets.chomp
    # push the student to the end of the student array
    student_list.push(student)
    puts "Do you want to continue? (y/n)"
    # if user enters y, the program continues adding other students, otherwise it exits
    exit = gets.chomp

    # if exit == "no" >> the user wants to exit the program, then print the student list
    student_list.each {|student| puts student} unless exit == "y"
end