def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  return card
end

def display_card_total(card_total)
puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  return input
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(kian)
  prompt_user
  answer = get_user_input
  if answer == "s"
    return kian
  elsif answer == "h"
    kian += deal_card
    return kian
  else
    invalid_command
    return kian
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
card_total = initial_round
until card_total > 21
card_total = hit?(card_total)
display_card_total(card_total)
end
end_game(card_total)
end
