class Array
    def my_uniq
        output = []
        self.each {|el| output << el if !output.include?(el)}
        output
    end
end