class Stack 
    attr_reader :disks
    attr_accessor :sticks

    def initialize(number)
        @sticks = Array.new(3) {Array.new}
        @disks = (1..number).to_a
        place_disks
    end

    def place_disks
        disks.each do |disk|
            sticks[0] << disk
        end
    end

    # def render
    #     length = sticks.map(&:length).max
    #     output = []
    #     (0...sticks.length).each do |j|
    #         inner = []
    #         (0...length).each do |i|
    #             inner << sticks[j][i]
    #         end
    #         output << inner
    #     end
    #     # 0,0 1,0 2,0

    #         (0...output.length).each do |i|
    #       (0...output[0].length).each do |j|
    #             print output[i][j]
    #         end
    #     end
    #     # output
    # end
end

# stack = Stack.new("five")
# p stack