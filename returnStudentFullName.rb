# 1. Return an array of each Student's full name, upper-cased
students = [ {first_name: 'Renad', last_name: 'Alobaid'},
			 {first_name: 'Roba', last_name: 'Arishi',},
			 {first_name: 'Lama', last_name: 'Alaskar',}]

upper_case_full_names = students.collect {|e| {full_name: e.values.join(' ').upcase}}.collect { |v| v.values }

puts upper_case_full_names
