def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random_card = rand(1..11)
  random_card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(current_card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "s"
    current_card_total
  elsif user_input == "h"
    current_card_total += deal_card
    current_card_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_card_total = initial_round
  until current_card_total > 21
    current_card_total = hit?(current_card_total)
    display_card_total(current_card_total)
  end
  end_game(current_card_total)
end
