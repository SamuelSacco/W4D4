class InputError < ArgumentError; end

class Player

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def get_input
        begin
            puts "#{name} please choose a stack"
            input = Integer(gets.chomp) 
            raise InputError if !input.between?(0,2)
        rescue
            puts "Incorrect input, please retry"
            retry
        end
        input
    end
end