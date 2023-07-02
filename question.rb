class Question
  attr_reader :first_number, :second_number, :answer

  def initialize
    @first_number = rand(1..20)
    @second_number = rand(1..20)
    @answer = @first_number + @second_number
  end

  def ask_question(player_number, player)
    puts "Player #{player_number}: What does #{@first_number} plus #{@second_number} equal?"
    player_answer = gets.chomp.to_i
    validate_answer(player_answer, player)
  end

  private

  def validate_answer(player_answer, player)
    if player_answer == @answer
      puts "Player #{player}: YES! You are correct."
    else
      puts "Player #{player}: Seriously? No!"
      player.decrease_score
    end
  end
end
