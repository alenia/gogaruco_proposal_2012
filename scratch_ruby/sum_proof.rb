# For the example without handwaving, please look at
# github.com/alenia/mathese/lib/basic_sum.rb

class BasicSum
  def self.sum_1
    1
  end

  def self.sum_#{k}
    send("sum_#{k-1}") + k
  end

  def self.sum(k)
    self.send("sum_#{k}")
  end
end

describe 'proving that sum(n,proc{|i| i}).should == (n*(n+1))/2 for all n' do
  it 'should be true for i=1' do
    BasicSum.sum(1).should == (1*2)/2
  end

  it 'should be true for n+1 if it is true for n' do
    BasicSum.stub(sum_n) { n*(n+1) / 2 }
    BasicSum.sum(n+1).should == (n+1)*(n+2) / 2
  end
end


