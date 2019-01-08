# my_favorite_number = 8
# puts my_favorite_number/2
# puts someones_favorite = 13
# puts someones_favorite = 7
# puts my_favorite_number - someones_favorite
# puts my_favorite_number *= 26
# puts my_favorite_number

# name = "Daniel"
# puts name
# puts name.upcase
# puts name.reverse
# puts name.include?('d')
# puts name.capitalize
# puts "your first name: #{name}"

# movies = ['The Godfather', 'Fight Club', 'Infinity Wars', 'Inception', 'Star Wars', 'Lord of the Rings']
# top_movies = []
# top_movies << movies[0] << movies[1] << movies[5]
# # puts top_movies.length
# # puts top_movies.slice(1)
# puts top_movies
# puts
# puts top_movies.sample(2)
# i = 0
# new_i = i
# while new_i<20
#   puts new_i= new_i+1
# end
# 20.times do
#   puts i=i+1
# end
#
# 20.times do
#   if i == 1
#     break
#   else puts i=i-1
#   end
# end

# need if/else command that writes valid/invalid
# create function that determines if a is 1 to 10, in this cases you will print valid, else will print invalid.
# def valid_num num
#   if  num >= 1 && num <= 10
#      'Valid'
#   else
#     'Invalid'
#   end
# end
# puts 'What number are you searching?'
# # get number from user
# num = gets.chomp.to_i
# puts "#{num} is #{valid_num num}"

# i = 1
# 100.times do
#     if i%3==0 and i%5==0
#       puts 'FizzBuzz'
#     elsif i%3==0
#       puts 'Fizz'
#     elsif i%5==0
#         puts 'Buzz'
#     else puts i
#     end
#     i = i+1
# end

# def sum_these_numbers (num1, num2)
#    num1+num2
# end
# puts sum_these_numbers 5, 4

# def is_even (num)
#   if num%2 == 0
#     true
#   else false
#   end
# end
#
# puts is_even 9

# words = ['test', 'false', 'toast']
# words.each {|val| puts val.upcase}

# puts 'What is your name?'
# name = gets.chomp
# puts "My name is #{name.capitalize}"
def valid_date
  puts 'Enter the day'
  day = gets.chomp.to_i
  puts 'Enter the month'
  month = gets.chomp.to_i
  puts 'Enter the year'
  year = gets.chomp.to_i
    if year%4==0 && year%100==0 && year%400!=0 && month==2
      if day >= 1 && day <= 29
         true
      else false
      end
      if month == 4 && 6 && 9 && 11
        if day > 30
           false
        end
        if day < 1 || day > 31
           true
        end
      end
  end
end
puts valid_date
