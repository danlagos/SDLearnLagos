
puts "You wake to the sound of your alarm going off. You really don't feel like going to school today. Do you:"
puts ''
puts "(A) hit the snooze button and stay in bed"
puts "(B) get up and go to school"

start_choice = gets.chomp.upcase

def start start_choice
  if start_choice == "A" || start_choice.include?("BED")
  playing_sick
elsif start_choice == "B" || start_choice.include?("SCHOOL")
    puts "Wow, lame. Game over!"
  end
end

def playing_sick
  puts "Your mother comes into the room and tells you that your're going to be late for school. Do you:"
  puts
  puts "(A) pretend to be sick"
  puts "(B) talk back to her"
  sick_choice = gets.chomp.upcase
  if sick_choice == "A" || sick_choice.include?("SICK")
    are_sick
  elsif sick_choice == "B" || sick_choice.include?("TALK")
    talk_back
  end
end

def are_sick
  puts "You pretend you are sick. Your mom believes you, gives you a bowl of hot soup, tells you to feel better, and leaves. You're free! Do you:"
  puts
  puts "(A) call Cameron to see if he wants to skip school too"
  puts "(B) do your own thing for the day"
  are_sick_choice = gets.chomp.upcase
  if are_sick_choice == "A" || are_sick_choice.include?("CAMERON")
    call_cameron
  elsif are_sick_choice == "B" || are_sick_choice.include?("THING")
    go_alone
  end
end

def talk_back
  puts "Your mother gets angry, and takes you to school. You walk into the school building. Do you:"
  puts
  puts "(A) pretend to be sick and go to the nurses office"
  puts "(B) keep walking, go out the back door and leave"
  talk_back_choice = gets.chomp.upcase
  if talk_back_choice == "A" || talk_back_choice.include?("NURSE")
    nurses_office
  elsif talk_back_choice == "B" || talk_back_choice.include?("LEAVE")
    disappear_campus
  end
end

def nurses_office
  puts "You arrive at the nurses office, and need to convince the nurse you are sick. Do you:"
  puts
  puts "(A) try to fake a cough"
  puts "(B) fake a stomach ache"
  nurses_office_choice = gets.chomp.upcase
  if nurses_office_choice == "A" || nurses_office_choice.include?("COUGH")
    puts "The nurse doesn't buy it. She sends you to class, and you spend the rest of the day at school. Game Over!"
  elsif nurses_office_choice == "B" || nurses_office_choice.include?("STOMACH")
    puts "The nurse buys it."
    disappear_campus
  end
end

def disappear_campus
  puts "You've escaped school campus. Do you:"
  puts
  puts "(A) call Cameron to see if he wants to skip school too"
  puts "(B) do your own thing for the day"
  disappear_campus_choice = gets.chomp.upcase
  if disappear_campus_choice == "A" || disappear_campus_choice.include?("CAMERON")
    call_cameron
  elsif disappear_campus_choice == "B" || disappear_campus_choice.include?("THING")
    go_alone
  end
end

def call_cameron
  puts "You call Cameron, he says he is really sick. He doesn't want to go out. Do you"
  puts
  puts "(A) go over to his house anyway to change his mind"
  puts "(B) do your own thing for the day"
  call_cameron_choice = gets.chomp.upcase
  if call_cameron_choice == "A" || call_cameron_choice.include?("HOUSE")
    convince_cameron
  elsif call_cameron_choice == "B" || call_cameron_choice.include?("THING")
    go_alone
  end
end

def convince_cameron
  puts "You arrive at Cameron's house, and you can't seem to convince him of anything. Do you:"
  puts
  puts "(A) Grab the keys to his dad's Ferrari"
  puts "(B) Leave"
  convince_cameron_choice = gets.chomp.upcase
  if convince_cameron_choice == "A" || convince_cameron_choice.include?("FERRARI")
    ferrari_choice
  elsif convince_cameron_choice == "B" || convince_cameron_choice.include?("LEAVE")
    go_alone
  end
end

def ferrari_choice
  puts "You start up the Ferrari, and hit the gas. Unfortunately the gear is in reverse and the car crashes out the rear garage window. Uh Oh! Do you:"
  puts
  puts "(A) Stay with Cameron like a good friend"
  puts "(B) Run away"
  ferrari_choice = gets.chomp.upcase
  if ferrari_choice == "A" || ferrari_choice.include?("STAY")
    puts "Cameron's dad comes home and sees what you've done. You get in a lot of trouble. Game over!"
  elsif ferrari_choice == "B" || ferrari_choice.include?("RUN") || ferrari_choice.include?("LEAVE")
    puts "Cold blooded..."
    go_alone
  end
end

def go_alone
  puts "The day is yours, carpe diem! Do you:"
  puts
  puts "(A) Go to the parade downtown"
  puts "(B) Go to the art museum"
  puts "(C) Go to a fancy restaurant"
  puts "(D) Go to Sears Tower"
  go_alone_choice = gets.chomp.upcase
  if go_alone_choice == "A" || go_alone_choice.include?("PARADE") || go_alone_choice.include?("DOWNTOWN")
    puts "You see the parade downtown, and sneak onto one of the parade floats. Good times! You have an awesome day off!"
  elsif go_alone_choice == "B" || go_alone_choice.include?("ART") || go_alone_choice.include?("MUSEUM")
    puts "You visit the art museum, and see some inspiring pieces of art. A life changing experience! You have an awesome day off!"
  elsif go_alone_choice == "C" || go_alone_choice.include?("FANCY")
    puts "You go to a fancy restaurant, and eat some of the finest lobster you've ever eaten. Delicious! You have an awesome day off!"
  elsif go_alone_choice == "D" || go_alone_choice.include?("SEARS") || go_alone_choice.include?("TOWER")
    puts "You messed up when you got there.  Principal Rooney is also at Sears Tower.  He caught you!  Game over"
  end
end

start(start_choice)
