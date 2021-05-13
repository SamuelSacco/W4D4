require "stack"

describe "Stack" do 
    subject(:stack) {Stack.new(5)}

    describe "#initialize" do 
        it "should accept a number representing the amount of disks" do
            expect{Stack.new(5)}.to_not raise_error 
            expect{Stack.new("five")}.to raise_error ArgumentError
        end

        it "set sticks to an array of length 3" do
            expect(stack.sticks.length).to eq(3)
        end

        it "should set disks to be an array that has a length of the given number" do
            expect(stack.disks.length).to eq(5)
        end

        it "should place the disks inside first array of sticks" do
            expect(stack.sticks[0].length).to eq(5)
        end
    end


end