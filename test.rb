
class InvalidGuessError < StandardError
end
class PlayerDeadError < StandardError
  end


class Guesser

  NUM_LIVES_DEAD = 0

  attr_accessor :number, :lives

  def initialize
    @number = 10
    @lives = 2
  end

  def guess(num)
    begin
            if num.class != Fixnum 
              raise InvalidGuessError, "thats not a number"
              self.lives -= 1
            elsif num == 10
              puts "good job"
            else
              self.lives -= 1
            end

            if self.lives == NUM_LIVES_DEAD
              raise PlayerDeadError, "Out of lives! You're dead!"
            end
        rescue InvalidGuessError => e
        puts e.message

        rescue PlayerDeadError => b
        puts b.message
    end

    
  end

end

bob = Guesser.new

bob.guess("hello")
bob.guess(1)
bob.guess(10)

bob.guess(3)
