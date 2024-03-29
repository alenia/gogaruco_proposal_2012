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
    describe 'proving that sum(n) == n*(n + 1)/2' do
      it 'should be true for i=1' do
        sum(1).should == (1*2)/2
      end

      it 'should be true for n+1 if it is true for n' do
        stub(sum).with(n) { n*(n + 1) / 2 }
        sum(n + 1).should == (n + 1)*(n + 2) / 2
      end
    end

(Visit http://github.com/alenia/mathese/lib/basic_sum.rb for an
example stubbable object!)

# The proof in math

<div class='math' style='margin-bottom:2em; font-size:2em;'>
Prove $\sum_{i=1}^n i = \frac{n*(n+1)}2$ for all $n$
</div>

<!SLIDE>

<div class='math'>
<h2>For $i=1$:</h2>
</div>

<div class='math'>
$$\sum_{i=1}^n i == 1 == \frac{1*2}2$$
</div>

<!SLIDE>

<div class='math'>
<h2>Assume true for $i=n$:</h2>
</div>

<div class='math'>
<table class='math'>
<tr>
  <td>$\sum_{i=1}^{n+1}i$ </td>
  <td>==</td>
  <td>$(n+1) + \sum_{i=1}^{n}i$</td>
</tr>
<tr>
  <td>$(n+1) + \sum_{i=1}^{n}i$</td>
  <td>==</td>
  <td>$(n+1) + $<span class='frac'>$\frac{n*(n+1)}2$</span></td>
</tr>
</table>
</div>
<!SLIDE>

<div class='math'>
<h2>Assume true for $i=n$:</h2>
</div>
<div class='math'>
<table class='math'>
<tr>
  <td>$\sum_{i=1}^{n+1}i$ </td>
  <td>==</td>
  <td>$(n+1) + $<span class='frac'>$\frac{n*(n+1)}2$</span></td>
</tr>
<tr>
  <td>$(n+1) + $<span class='frac'>$\frac{n*(n+1)}2$</span></td>
  <td>==</td>
  <td class='frac'>$\frac{n*(n+1) + 2*(n+1)}2 $</td>
</tr>
</table>
</div>
<!SLIDE>

<div class='math'>
<h2>Assume true for $i=n$:</h2>
</div>
<div class='math'>
<table class='math'>
<tr>
  <td>$\sum_{i=1}^{n+1}i$ </td>
  <td>==</td>
  <td class='frac'>$\frac{n*(n+1) + 2*(n+1)}2 $</td>
</tr>
<tr>
  <td class='frac'>$\frac{n*(n+1) + 2*(n+1)}2$</td>
  <td>==</td>
  <td class='frac'>$\frac{n^2 + 3*n + 2}2 $</td>
</tr>
</table>
</div>
<!SLIDE>

<div class='math'>
<h2>Assume true for $i=n$:</h2>
</div>
<div class='math'>
<table class='math'>
<tr>
  <td>$\sum_{i=1}^{n+1}i$ </td>
  <td>==</td>
  <td class='frac'>$\frac{n^2 + 3*n + 2}2 $</td>
</tr>
<tr>
  <td class='frac'>$\frac{n^2 + 3*n + 2}2$</td>
  <td>==</td>
  <td class='frac'>$\frac{(n+1)(n+2)}2 $</td>
</tr>
</table>
</div>

# Filler Slide
<!--
  I might not want to include this slide
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
-->

# Binomial Coefficient

<div class='math' style='font-size:50px; margin-top:60px;'>
  $${n \choose k}$$
</div>

# Binomial Expansion

<div class='math pascal center'>
$(x+1)^0=$ 1<br/>
$(x+1)^1=$ 1$x+$ 1<br/>
$(x+1)^2=$ 1$x^2+$ 2$x+$ 1<br/>
$(x+1)^3=$ 1$x^3+$ 3$x^2+$ 3$x+$ 1<br/>
$(x+1)^4=$ 1$x^4+$ 4$x^3+$ 6$x^2+$ 4$x+$ 1<br/>
$(x+1)^5=$ 1$x^5+$ 5$x^4+$ 10$x^3+$ 10$x^2+$ 5$x+$ 1<br/>
$(x+1)^6=$ 1$x^6+$ 6$x^5+$ 15$x^4+$ 20$x^3+$ 15$x^2+$ 6$x+$ 1<br/>
</pre>

# Pascal's Triangle

<div class='math pascal center hide-math'>
$(x+1)^0=$ 1<br/>
$(x+1)^1=$ 1$x+$ 1<br/>
$(x+1)^2=$ 1$x^2+$ 2$x+$ 1<br/>
$(x+1)^3=$ 1$x^3+$ 3$x^2+$ 3$x+$ 1<br/>
$(x+1)^4=$ 1$x^4+$ 4$x^3+$ 6$x^2+$ 4$x+$ 1<br/>
$(x+1)^5=$ 1$x^5+$ 5$x^4+$ 10$x^3+$ 10$x^2+$ 5$x+$ 1<br/>
$(x+1)^6=$ 1$x^6+$ 6$x^5+$ 15$x^4+$ 20$x^3+$ 15$x^2+$ 6$x+$ 1<br/>
</div>

# Binomial Coefficient

<div class='math'>
  $$(x+1)^n = \sum_{k=0}^n{n \choose k}x^k$$
</div>


# Pascal's Triangle in Ruby

    @@@ ruby
    pascal(0) = [ 1 ]
    pascal(1) = [ 1, 1 ]
    pascal(2) = [ 1, 2, 1 ]
    pascal(3) = [ 1, 3, 3, 1 ]
    pascal(4) = [ 1, 4, 6, 4, 1 ]
    pascal(5) = [ 1, 5, 10, 10, 5, 1 ]
    pascal(6) = [ 1, 6, 15, 20, 15, 6, 1 ]

# Expansion

<!-- By manipulating arrays of strings, I can mimic the way that
algebraic expressions are multiplied together. From here, I can
construct Pascal's triangle using magic and unicorns.
-->
    @@@ ruby
    describe 'expand' do
      context "for small arrays" do
        it "should concatinate the values of the two arrays" do
          # (a + b + c)*d = ad + bd + cd
          expand(['a','b','c'],['d']).should == ['ad','bd','cd']
          # a*(b + c + d) = ab + ac + ad
          expand(['a'],['b','c','d']).should == ['ab','ac','ad']
        end

        it "should alphabetically sort everything" do
          # (d + c + b)*a = ab + ac + ad
          expand(['d','c','b']['a']).should == ['ab','ac','ad']
        end
      end

      it 'should concatinate all the values for larger arrays' do
        # (a + b)*(a + b) = aa + ab + ab + bb
        expand(['a','b'],['a','b']).should == ['aa','ab','ab','bb']
      end
    end

# Retrieving 'exponents' from an array

    describe 'Array.exponentize' do
      it 'should return a hash based on the amount of times a string appears' do
        ['a','b','b','c','c','c','c','d'].exponentize.should ==
          { 'a' => 1, 'b' => 2, 'c' => 4, 'd' => 1 }
      end
    end


# Binomial Expansion and Pascal's Triangle

    @@@ ruby
    def binomial_expansion(i)
      i == 1 ? ['a','b'] : expand(binomial_expansion(i-1),['a','b'])
    end

    def pascal(i)
      return [1] if i == 0
      binomial_expansion(i).exponentize.values
    end

# Pascal's Triangle

    @@@ ruby
    pascal(0) = [ 1 ]
    pascal(1) = [ 1, 1 ]
    pascal(2) = [ 1, 2, 1 ]
    pascal(3) = [ 1, 3, 3, 1 ]
    pascal(4) = [ 1, 4, 6, 4, 1 ]
    pascal(5) = [ 1, 5, 10, 10, 5, 1 ]
    pascal(6) = [ 1, 6, 15, 20, 15, 6, 1 ]

## And now, the Binomial Coefficient

    @@@ ruby
    def binomial_coefficient(n,k)
      pascal(n)[k]
    end

# 

<div class='math'>
$${n \choose k} = \frac{n!}{k!(n-k)!}$$
</div>

    @@@ ruby
    def binomial_coefficient(n,k)
      fact(n)/(fact(k)*fact(n-k))
    end

    def fact(a)
      (1..a).inject(1) do |f,k|
        f * k
      end
    end

# Filler Slide

# How To Solve It

<!SLIDE>

> If you can't solve a problem, then there is an easier problem you
> can't solve. Find it.  - Polya

<!SLIDE>

    @@@ruby
    describe 'When you follow the yellow brick road' do
      before do
        visit '/yellow_brick_road'
      end

      it 'you can defeat a flying monkey' do
        click_link 'Battle Evil'
        FlyingMonkey.last.should be_defeated
      end
    end

<pre style='color:red'>
     Failure/Error: visit '/yellow_brick_road'
     ActionController::RoutingError:
       No route matches [GET] "/yellow_brick_road"
</pre>

<pre style='color:red'>
     Failure/Error: visit '/yellow_brick_road'
     ActionController::RoutingError:
       uninitialized constant YellowBrickRoadController
</pre>


<pre style='color:red'>
     Failure/Error: visit '/yellow_brick_road'
     AbstractController::ActionNotFound:
       The action 'index' could not be found for YellowBrickRoadController
</pre>


<pre style='color:red'>
     Failure/Error: visit '/yellow_brick_road'
     ActionView::MissingTemplate:
       Missing template yellow_brick_road/index, application/index with {:handlers=>[:erb, :builder, :coffee, :haml], :formats=>[:html], :locale=>[:en, :en]}. Searched in:
         * "~/oz/app/views"
</pre>

<!SLIDE>

> It is foolish to answer a question you do not understand. It is sad to
> work for an end you do not destire.

<!SLIDE>


<pre style='color:red'>
     Failure/Error: click_link 'Battle Evil'
     Capybara::ElementNotFound:
       no link with title, id or text 'Battle Evil' found
</pre>

<pre style='color:red'>
     Failure/Error: FlyingMonkey.last.should be_defeated
     NameError:
       uninitialized constant FlyingMonkey
</pre>

<pre style='color:red'>
     Failure/Error: FlyingMonkey.last.should be_defeated
     ActiveRecord::StatementInvalid:
       Could not find table 'flying_monkeys'
</pre>

<pre style='color:red'>
     Failure/Error: FlyingMonkey.last.should be_defeated
     NoMethodError:
       undefined method `defeated?' for nil:NilClass
</pre>

<!SLIDE>

    YellowBrickRoadController GET #index should create a swarm of flying monkeys
<pre style='color:red'>
Failure/Error: FlyingMonkey.should_receive :swarm
       (<FlyingMonkey(id: integer, defeated: boolean, awesomeness: integer, created_at: datetime, updated_at: datetime) (class)>).swarm(any args)
           expected: 1 time
           received: 0 times
</pre>

<pre style='color:green'>
.

1 example, 0 failures
</pre>

    yellow brick road should let you defeat a flying monkey
<pre style='color:red'>
     Failure/Error: visit '/yellow_brick_road'
     NoMethodError:
       undefined method `swarm' for #<Class:0x007fa288474578>
</pre>

<!SLIDE>

    FlyingMonkey#swarm should create 5 flying monkeys
<pre style='color:red'>
     Failure/Error: expect { FlyingMonkey.swarm }.to change(FlyingMonkey, :count).by(1)
     NoMethodError:
       undefined method `swarm' for #<Class:0x007fbf2c53f0a0>
</pre>

<pre style='color:red'>
     Failure/Error: expect { FlyingMonkey.swarm }.to change(FlyingMonkey, :count).by(5)
       count should have been changed by 5, but was changed by 0
</pre>
<pre style='color:green'>
.

1 example, 0 failures
</pre>

    yellow brick road should let you defeat a flying monkey
<pre style='color:red'>
     Failure/Error: FlyingMonkey.last.should be_defeated
       expected defeated? to return true, got false
</pre>

<pre style='color:red'>
     Failure/Error: visit '/yellow_brick_road'
     ActionView::Template::Error:
       undefined method `defeat_flying_monkey_path' for #<#<Class:0x007fcef9dd1e98>:0x007fcef9d86f88>
</pre>

<pre style='color:red'>
     Failure/Error: click_link 'Battle Evil'
     ActionController::RoutingError:
       uninitialized constant FlyingMonkeysController
</pre>

<pre style='color:red'>
     Failure/Error: click_link 'Battle Evil'
     AbstractController::ActionNotFound:
       The action 'defeat' could not be found for FlyingMonkeysController
</pre>

<pre style='color:red'>
     Failure/Error: FlyingMonkey.last.should be_defeated
       expected defeated? to return true, got false
</pre>
