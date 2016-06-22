=begin
ToDo: not an integer message
=end
secret_number = rand(1..100)
counter = 1
kumquat = []
puts "I'm thinking of a number between 1 and 100.  You have five tries to guess what it is."
input = gets.chomp

while input.to_i != secret_number
  break if counter == 5
  if kumquat.include?(input.to_i)
    puts "Are you okay?"
  elsif input.to_i > secret_number
    puts "#{input} is too high. Try again."
    kumquat.push(input.to_i)
    counter += 1
  else
    puts "#{input} is too low. Try again."
    kumquat.push(input.to_i)
    counter += 1
  end
  input = gets.chomp
end

if input.to_i == secret_number
  puts "You win!  Go buy a lottery ticket!"
else
  puts "You lose.  The number was #{secret_number}."
end
