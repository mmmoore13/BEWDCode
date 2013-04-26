secret_number = 7

def message_out(message)
     puts message
end

def get_name
     gets.strip
end

def get_guess
     gets.to_i
end

message_out("Welcome to the Number Dome! Brought to you by Matt Moore, beer and Mad Max")
message_out("What is your name?")
name = get_name

message_out("Hello " + name + "! Are you ready to play? Guess the secret number! What is your guess?")


3.downto(1) do |x|
     guess = get_guess
     
     if guess == secret_number
          puts "Huzzah! You win, Game Over"
          break
     end

     if guess > secret_number
          puts "Not good enough; guess lower. #{x - 1} guesses left"
          next
     end

     if guess < secret_number 
          puts "A low-baller, huh? Show me the money and guess higher. #{x - 1} guesses left!"
          next
     end

     if x = 0
          puts "Can't get it? GAME OVER"
     end
end


