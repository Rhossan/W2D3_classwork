require 'rspec'
require 'excercises'

describe "my_uniq" do
  # let(:arr) {}
  it "returns a new array with no duplicates" do
    expect(my_uniq([1, 1, 2, 3, 4, 4])).to eq([1, 2, 3, 4])
  end
end

describe "#two_sum" do
  let (:arr) {[-1,0,2,-2,1]}
  it "returns pairs of postions that sum to 0" do
    expect(arr.two_sum).to eq([[0,4],[2,3]])
  end
end

describe "my_transpose" do
  let(:arr) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}

  it "returns the transposed array" do
    expect(my_transpose(arr)).to eq([
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
    ])
  end
end

describe "stock_picker" do
  let(:arr) {[20,5,50,100]}
  it "outputs most profitable pair of days" do 
    expect(stock_picker(arr)).to eq([1,3])
  end
end
