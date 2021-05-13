require "tdd"

describe "Array" do 
    describe "#my_uniq" do
        it "removes duplicates from an array" do 
            expect([1,2,1,3,3].my_uniq).to eq([1, 2, 3])
        end
    end

    describe "#two_sum" do
        it "return all pair of indices where elements sum to zero" do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
        end

        it "output should be sorted" do
            expect([-1, 0, 2, -2, 1].two_sum).to_not eq([[2, 3],[0, 4]])
        end
    end

    
end

describe "my_transpose" do
    it "convert between the row-oriented and column-oriented representations" do
        expect(my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end
end

describe "stock_pick" do
    it "outputs the most profitable pair of days" do
        arr = %w(10 7 5 11 2 5 6 10).map(&:to_i)
        expect(stock_pick(arr)).to eq([2, 10])
    end
    
    it "you can't sell stock before you buy it" do
        arr = %w(10 7 5 11 2 5 6 10).map(&:to_i)
        expect(stock_pick(arr)).to_not eq([11, 2])
    end
end