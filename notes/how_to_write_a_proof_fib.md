# Notes about how we translate Math into Ruby

### Caveat

One ironic thing about the analogy between math and test driven
development is that when writing Ruby, it isn't straightforward to
test-drive mathematic methods because unlike in Haskell functions do not
correspond to mathematic functions.  We can't examine the proc we used
to create a method and test it based on stand-ins for any number.

I'm going to describe what I mean using the Fibonacci Numbers

$F_n = F_{n-1} + F_{n-1}$

Otherwise known in code as 

  def fib(n)
    n > 2 ? n : fib(n-1) + fib(n-2)
  end

There is a mathematic identity that:

$F_n = \floor{(\phi^n - \phi'^{n})/\sqrt{5}}$

where

$\phi = {1+\sqrt{5}}/{2}$
$\phi' = {1-\sqrt{5}}/{2}$

Obviously, using this identity as a definition for the Fibonacci numbers
has its pitfalls because for large numbers, we run into the limitations
of our math library. However, given a world of a perfect mathematical
library we can implement the definition of the fibonacci numbers like
so:

  def fib(n)
    phi = (1 + Math.sqrt(5))/2
    phi_conjugate = (1-Math.sqrt(5))/2
    f = (phi**n - phi_conjugate**n)/Math.sqrt(5)
    f.to_i
  end

However in testing it it would be useful to use mathematical induction,
and we don't really have that up our testing sleeves. Instead, we can
only make sure it works for values that we pick specifically:

  describe "#fib(n)" do
    it "should return 0 if n = 0 and 1 if n = 1" do
      fib(0).should == 0
      fib(1).should == 1
    end
    it "should return fib(n-1) + fib(n-2) if n > 1" do
      20.times do |n|
        n += 2
        fib(n).should == fib(n-1) + fib(n-2)
      end
    end
  end

It would be nice to say:

    it "should return fib(n-1) + fib(n-2) if n > 1" do
      infinity.times do |n|
        n += 2
        fib(n).should == fib(n-1) + fib(n-2)
      end
    end

or even nicer to prove inductively, for instance:

  def classic_fib(n)
    n > 2 ? n : fib(n-1) + fib(n-2)
  end

  def phi_fib(n)
    phi = (1 + Math.sqrt(5))/2
    phi_conjugate = (1-Math.sqrt(5))/2
    f = (phi**n - phi_conjugate**n)/Math.sqrt(5)
    f.to_i
  end
    
  
  it "should return fib(n-1) + fib(n-2) if true for fib(n-1) and fib(n-2)" do
    stub.classic_fib(n-1) { phi_fib(n-1) }
    stub.classic_fib(n-2) { phi_fib(n-2) }

    fib(n).should =

ACK this is a bit heavy.  I need to probably stick to this analogy on a
binomial coefficient level. easier to understand.

