require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total=deal_card+deal_card
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  holder=get_user_input
  while holder!="s"&&holder!="h" do
    invalid_command
    prompt_user
    holder=get_user_input
  end
  if holder== "s"
    total
  else 
    total+=deal_card
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total=initial_round
  while total<=21 do
    total=hit?(total)
    display_card_total(total)
    #binding.pry
  end
  end_game(total)
end
    
