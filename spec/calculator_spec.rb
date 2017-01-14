# Tests for calculator class
# spec/calculator_spec.rb
require 'calculator'

describe Calculator do
  describe '#add' do
    it 'returns the sum of its positive arguments' do
      expect(Calculator.new.add(1, 2)).to eq(3)
    end

    it 'returns the sum of its negative arguments' do
      expect(Calculator.new.add(-1, -2)).to eq(-3)
    end

    it 'returns the sum of floats' do
      expect(Calculator.new.add(2.0, 5.0)).to eq(7.0)
    end

  end

  describe '#subtract' do
    it 'returns the result of taking one number away from another' do
      expect(Calculator.new.subtract(1, 2)).to eq(-1)
    end

    it 'subtracts negative numbers' do
      expect(Calculator.new.subtract(-10, -2)).to eq(-8)
    end

    it 'subtracts floats' do
      expect(Calculator.new.subtract(8.0, 2.0)).to eq(6.0)
    end
  end

  describe '#multiply' do
    it 'returns the product of 2 numbers' do
      expect(Calculator.new.multiply(2, 3)).to eq(6)
    end
  end

  describe '#divide' do
    it 'returns one number divided by another as a decimal' do
      expect(Calculator.new.divide(2, 3)).to be_within(0.1).of(0.6)
    end

    it 'returns one number divided by another' do
      expect(Calculator.new.divide(4, 2)).to eq(2)
    end

    it "raises an error in dividing by zero" do
      expect do
        Calculator.new.divide(4, 0)
      end.to raise_error(ArgumentError)
    end

    it 'returns a remainder as a float' do
      expect(Calculator.new.divide(5, 2)).to eq(2.5)
    end
  end

  describe '#pow' do
    it 'returns the power of a number' do
      expect(Calculator.new.pow(3, 3)).to eq(27)
    end

    it 'returns the power of a number as a decimal' do
      expect(Calculator.new.pow(27, 1/3.0)).to eq(3.0)
    end

    it 'returns the power of a negative number' do
      expect(Calculator.new.pow(-3, 2)).to eq(9)
    end
  end
  
  describe '#sqrt' do
    it 'returns the square root of a positive number' do
      expect(Calculator.new.sqrt(9)).to eq(3)
    end

    it 'returns the square root of a number as a decimal' do
      expect(Calculator.new.sqrt(8)).to eq(2.83)
    end

    it "raises an error for the square root on negative numbers" do
      expect do
        Calculator.new.sqrt(-4)
      end.to raise_error(ArgumentError)
    end
  end

  describe '#memory' do
    it 'return what is stored in memory with no value passed in' do
      expect(Calculator.new.memory).to eq(nil)
    end

    it 'return what is in memory' do
      expect(Calculator.new.memory=(8)).to eq(8)
    end

    it 'returns saved value' do
      expect(Calculator.new.memory).to eq(8)
    end

    it 'clears memory' do
      expect(Calculator.new.memory).to eq(nil)
    end

    # it "actually sets the @board variable" do

    #   # First set up the test by running our method
    #   calc = Calculator.new
    #   calc.instance_variable_set( :memory, test_array  =  8

    #   # 
    #   expect( board.instance_variable_get( :@board_array ).to eq( test_array )
    # end

  end


#   The memory= function stores an object in memory, overwriting any previous object in memory See the Recipes for hints on testing readers/writers.
# The memory function returns the object in memory and clears memory when returned, and starts as nil.
# If the stringify input is passed to a new calculator, the outputs of each of the computational functions above is turned into a string.
end