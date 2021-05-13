require_relative "./stack.rb"
class Game
    
    def initialize(name,number)
        @player = Player.new(name)
        @stack = Stack.new(number)
    end

    def move
        begin
            take = self.player.get_input
            if self.stack.valid_move?(take)
                place = self.player.get_input
                curr_disk = self.stack.sticks[start].shift

            else
                raise ArgumentError
        rescue 
            puts "stack is empty"
            retry
        end
         
        

    end

    def play
        while !self.won?
            self.move
        end
    end

    def won?
        @stack[-1] == @stack.disk.sort
    end


end