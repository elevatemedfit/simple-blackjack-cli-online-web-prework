def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  rand(1..11)# code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"# code #prompt_user here
end

def get_user_input
  gets.chomp# code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"# code #end_game here
end

def initial_round
  card_total=deal_card+deal_card
  display_card_total(card_total)
  return sum=card_total
end

def hit?(sum)
      prompt_user
      responce=get_user_input
      if responce=='h'
        return card_total+=deal_card
      elsif responce!='h'&&responce!='s'
        invalid_command
        prompt_user
      else responce=='s'
       return card_total
  end
end




def invalid_command
  puts "please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner(current_card_total)
  welcome
  initial_round
until current_card_total>21
  hit?
  display_card_total
end
  end_game
end
