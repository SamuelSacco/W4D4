require "stack"

describe "Stack" do 
    subject(:stack) {Stack.new(5)}

    describe "#initialize" do 
        it "should accept a number representing the amount of disks" do
            expect{Stack.new(5)}.to_not raise_error 
            expect{Stack.new("five")}.to raise_error ArgumentError
        end
    end
end