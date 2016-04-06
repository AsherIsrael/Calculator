require_relative 'Calculator'
RSpec.describe Calculator do
	before do
		@calc = Calculator.new
	end
	it "Has an attribute @total" do
		expect{@calc.total}.not_to raise_error
	end
	it "Has a method add that adds values" do
		expect{@calc.add}.not_to raise_error
		@calc.add(1)
		expect(@calc.total).to eq(1)
		@calc.add(2,3,4).add(1)
		expect(@calc.total).to eq(11)
	end
	it "Has a method subtract that subtracts values" do
		expect{@calc.subtract}.not_to raise_error
		@calc.subtract(1)
		expect(@calc.total).to eq(-1)
		@calc.subtract(2,3,4).subtract(1)
		expect(@calc.total).to eq(-11)
	end
	it "Has a method multiply that multiplies values" do
		expect{@calc.multiply}.not_to raise_error
		@calc.multiply(3)
		expect(@calc.total).to eq(0)
		@calc.add(2).multiply(2)
		expect(@calc.total).to eq(4)
		@calc.multiply(3,5)
		expect(@calc.total).to eq(60)
	end
end