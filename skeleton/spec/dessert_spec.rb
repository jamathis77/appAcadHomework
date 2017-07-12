require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)!
Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:pudding) {Dessert.new('pudding', 1, 'Joe Mama')}
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(pudding.type).to eq ('pudding')
    end

    it "sets a quantity" do
      expect(pudding.quantity).to eq (1)
    end

    it "starts ingredients as an empty array" do
      expect(pudding.ingredients).to eq ([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new('pudding', 'one', "Joe Mama")}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(pudding.ingredients).to_not include('Joe Mama')
      pudding.add_ingredient('Joe Mama')
      expect(pudding.ingredients).to include('Joe Mama')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
