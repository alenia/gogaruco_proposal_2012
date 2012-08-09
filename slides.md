# A Bit about me

<!SLIDE>
# What I love about math
![picture](images/purity.png)

<!SLIDE>
# How I got started
![picture](images/railsbridge.png)

# Inspiration for this talk
# This:
    @@@ ruby
    { a: 
      { b:
        { c: 'd' },
        { e: 'f' }
      },
      g: 'h'
    }

# Into this: 
    
    @@@ ruby
    [
      [[ :a, :b, :c ], 'd'],
      [[ :a, :b, :e ], 'f'],
      [[ :g ], 'h']
    ]

# Summation Notation

<div class='math'>
$$\sum_{i=1}^n i = 1 + 2 + 3 + \ldots + n$$
</div>

    @@@ ruby
    def sum(n)
      sum = 0
      (1..n).inject(0) do |sum, i|
        sum += i
      end
    end

# Summation Notation

<div class='math'>
$$\sum_{i=1}^n f(i) = f(1) + f(2) + f(3) + \ldots + f(n)$$
</div>

    @@@ ruby
    def sum(n, func)
      sum = 0
      (1..n).inject(0) do |sum, i|
        sum += func[i]
      end
    end

# Introduction to Induction

Pardon my pseudo-code!

    @@@ ruby
    describe 'proving that sum(n) == n*(n+1)/2' do
      it 'should be true for i=1' do
        sum(1).should == (1*2)/2
      end

      it 'should be true for n+1 if it is true for n' do
        stub(sum_n) { n*(n+1) / 2 }
        sum(n+1).should == (n+1)*(n+2) / 2
      end
    end

(Visit http://github.com/alenia/mathese/lib/basic_sum.rb for an
example stubbable object!)

# The proof in math

<div class='math' style='margin-bottom:20px'>
Prove $\sum_{i=1}^n i = \frac{n*(n+1)}2$ for all $n$
</div>

<div class='math'>
For $i=1$:
$$\sum_{i=1}^n 1 == 1 == \frac{1*2}2$$
</div>

<div class='math'>
Assume true for $i=n$:<br/>
$$\sum_{i=1}^{n+1} == \sum_{i=1}^{n}i + (n+1)$$
$$\sum{i=1}^{n} + (n+1) == \frac{n*(n+1)}2 + (n+1)$$
$$\frac{n*(n+1)}2 + (n+1) == \frac{n*(n+1) + 2*(n+1)}2 $$
$$\frac{n*(n+1) + 2*(n+1)}2 == \frac{n^2 + 3*n + 2}2 $$
$$\frac{n^2 + 3*n + 2}2 == \frac{(n+1)(n+2)}2 $$
</div>



# Fibonacci Sequence

<div class='math'>
  $$
    F_0 = 0 \\
    F_1 = 1 \\
    F_n = F_{n-1} + F_{n-2} \verb! for ! n>1
  $$
</div>

    @@@ ruby
    def fib(n)
      n > 2 ? n : fib(n-1) + fib(n-2)
    end


