require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  it 'shows instance of solver class' do
    expect(@solver).to be_instance_of Solver
  end

  context '#factorial' do
    it 'checks if the factorial method exists' do
      expect(@solver).to respond_to :factorial
    end

    it 'gives factorial of given integer' do
      expect(@solver.factorial(5)).to match 120
    end

    it 'gives correct value for special case of 0' do
      expect(@solver.factorial(0)).to match 1
    end

    it 'gives exception for negative numbers' do
      expect(@solver.factorial(-5)).to match 'error ! negative number'
    end
  end

  context '#reverse' do
    it 'checks if the reverse method exists' do
      expect(@solver).to respond_to :reverse
    end

    it 'gives reversed word for' do
      expect(@solver.reverse('hello')).to match 'olleh'
    end

    it 'gives reversed word for' do
      expect(@solver.reverse('ola')).to match 'alo'
    end
  end

  context '#fizzbuzz' do
    it 'check if fizzbuzz method exists' do
      expect(@solver).to respond_to :fizzbuzz
    end

    it 'checks for divisibility by 3 only gives fizz' do
      expect(@solver.fizzbuzz(6)).to match 'fizz'
    end

    it 'checks for divisibility by 5 only gives buzz' do
      expect(@solver.fizzbuzz(10)).to match 'buzz'
    end

    it 'checks for divisibility by 5 and 3 gives fizzbuzz' do
      expect(@solver.fizzbuzz(30)).to match 'fizzbuzz'
    end
  end
end
