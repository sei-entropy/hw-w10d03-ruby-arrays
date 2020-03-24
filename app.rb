## 1. Return an array of each Students full name, upper-cased

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

upper_case_full_names = students.map do |name|
    "#{name[:first_name].upcase} #{name[:last_name].upcase}"
  end

#   p upper_case_full_names

## Answer: RENAD ALOBAID, ROBA ARISHI, LAMA ALASKAR
