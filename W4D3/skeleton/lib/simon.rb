class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until self.game_over == true
      self.take_turn
    end
    self.game_over_message
    self.reset_game
  end

  def take_turn
    self.require_sequence
    if game_over == false
      puts self.show_sequence
      self.round_success_message
      self.seq += 1
    end
  end

  def show_sequence
    self.add_random_color
    # return self.seq
  end

  def require_sequence
    puts "Repeat back the colors you were shown separated by spaces:"
    puts "(choices are red, blue, green, yellow)"
    raw_user_input = gets.chomp
    arrayed_input = raw_user_input.join
    if arrayed_input != self.seq
      self.game_over = true
    end
  end

  def add_random_color
    self.seq << COLORS.sample
  end

  def round_success_message
    puts "Goo' jarb! Ya win da game."
  end

  def game_over_message
    puts "No bueno. Ya no win"
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end
