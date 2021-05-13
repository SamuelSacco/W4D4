class Array
    def my_uniq
        output = []
        self.each {|el| output << el if !output.include?(el)}
        output
    end

    def two_sum
        indices = []
        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                indices << [i, j] if self[i] + self[j] == 0     
            end
        end
        indices
    end
    
end

def my_transpose(arr)
    arr.transpose     
end

arr = %w(10 7 5 11 2 5 6 10).map(&:to_i)

def stock_pick(arr)
    pair = []
    max_diff = 0
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            diff = arr[j] - arr[i] 
            if diff > max_diff
                pair = [arr[i],arr[j]] 
                max_diff = diff
            end
        end
    end
    pair
end