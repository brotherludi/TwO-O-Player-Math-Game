require_relative 'player'
require_relative 'question'

puts '----- NEW GAME -----'

player1 = Player.new
player2 = Player.new
current_player = 1

until player1.score.zero? || player2.score.zero?
  question = Question.new
  current_player == 1 ? question.ask_question(1, player1) : question.ask_question(2, player2)
  puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
  puts '----- NEW TURN -----'
  current_player = (current_player == 1) ? 2 : 1
end

if player1.score.zero?
  puts "Player 2 wins with a score of #{player2.score}/3"
elsif player2.score.zero?
  puts "Player 1 wins with a score of #{player1.score}/3"
end

puts '----- GAME OVER -----'
puts 'Goodbye!'
