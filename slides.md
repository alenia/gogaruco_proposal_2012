# Why is a Math Proof like a Unit Test?
![picture](images/raven_writing_desk.jpg)

# A Bit about me

# What I love about math
![picture](images/purity.png)

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

## Into this: 
    
    @@@ ruby
    [
      [[ :a, :b, :c ], 'd'],
      [[ :a, :b, :e ], 'f'],
      [[ :g ], 'h']
    ]

# Oh boy do we ever use recursion!

![picture](images/recursion.jpg)

# Introduction to Induction

    @@@ ruby
    describe 'proving that sum_up_to(n) == n(n + 1)/2' do
      it 'should be true for i=1' do
        sum_up_to(1).should == (1*2)/2
      end

      it 'should be true for n+1 if it is true for n' do
        n = Integer.new
        stub(sum_up_to(n)) { n(n + 1) / 2 }
        sum_up_to(n + 1).should == (n + 1)(n + 2) / 2
      end
    end

# Wait, what?

# Introduction to Induction

    @@@ ruby
    describe 'proving that sum_up_to(n) == n(n + 1)/2' do
      it 'should be true for i=1' do
        sum_up_to(1).should == (1*2)/2
      end

      it 'should be true for n+1 if it is true for n' do
        n = Integer.new
        stub(sum_up_to(n)) { n(n + 1) / 2 }
        sum_up_to(n + 1).should == (n + 1)(n + 2) / 2
      end
    end

# Summation Notation

<div class='math_vs_code'>
<div class='math half'>
$$\sum_{i=1}^n i = 1 + 2 + 3 + \ldots + n$$
</div>

<pre class='cr'>:::ruby
def sum_up_to(n)
  return 1 if n == 1
  n + sum_up_to(n-1) if n > 1
end
</pre>
</div>

<div class='sigma fadein'>
$$\sum_{i=1}^n i$$
</div>

<!SLIDE padded>

<div class='math big'>
Prove $\sum_{i=1}^n i = \frac{n(n+1)}2$ for all $n$
</div>

---------

<table class='nostyle'>
<tr>
<td>1 + 2 + 3 </td><td> ==  </td><td> 6 </td><td> ==  </td><td class='frac'> $\frac{12}2$</td><td> ==  </td><td class='frac'> $\frac{3*4}2$</td>
</tr>
<tr>
<td>1 + 2 + 3 + 4  </td><td> ==  </td><td> 10 </td><td>  ==  </td><td class='frac'> $\frac{20}2$</td><td> ==  </td><td class='frac'> $\frac{4*5}2$</td>
</tr>
<tr>
<td>1 + 2 + 3 + 4 + 5 </td><td>  ==  </td><td> 15  </td><td> ==  </td><td class='frac'> $\frac{30}2$</td><td> ==  </td><td class='frac'> $\frac{5*6}2$</td>
</tr>
</table>

<!SLIDE>
### Visual Proof
<div class='visual_proof'>
<ol class='right'>
  <li>&nbsp;</li>
  <li>&nbsp;</li>
  <li><span>&middot;</span></li>
  <li><span>&middot;</span><span>&middot;</span></li>
  <li><span>&middot;</span><span>&middot;</span><span>&middot;</span></li>
  <li><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span></li>
  <li><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span></li>
  <li><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span></li>
  <li><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span></li>
  <li class='numbers'><span>1</span><span>+ 2</span><span>+ 3</span><span>+ 4
    </span><span>+ 5</span><span>+ 6</span><span>+ 7</span></li>
</ol>

<div class='giant plus'>+</div>

<ol class='left'>
  <li class='numbers'><span>7 +</span><span>6 +</span><span>5 +</span><span>4 +
    </span><span>3 +</span><span>2 +</span><span>1</span></li>
  <li><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span></li>
  <li><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span></li>
  <li><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span></li>
  <li><span>&middot;</span><span>&middot;</span><span>&middot;</span><span>&middot;</span></li>
  <li><span>&middot;</span><span>&middot;</span><span>&middot;</span></li>
  <li><span>&middot;</span><span>&middot;</span></li>
  <li><span>&middot;</span></li>
</ol>
<div class='giant arrow fadein'>&#x21fe;</div>
<div class='bracket_right fadein'><span class='bracket'>}</span><span class='text'>8 = n+1</span></div>
<div class='bracket_bottom fadein'><div class='bracket'>}</div><span class='text'>7 = n<span></div>
</div>

# Little Gauss

![picture](images/Little_Gauss_by_Horusart.jpeg) 

<!SLIDE>

<div class='math'>
<h2>For $n=1$:</h2>
</div>

<div class='math'>
$$\sum_{i=1}^1 i == 1 == \frac{1*2}2$$
</div>

    @@@ ruby
    it 'should be true for i=1' do
      sum_up_to(1).should == (1*2)/2
    end

<!SLIDE>

<div class='math'>
<h2>Assume $\sum_{i=1}^n i = \frac{n(n+1)}2$ for some n:</h2>
</div>
<div class='math'>
<table class='math'>
<tr class='top'>
  <td>$\sum_{i=1}^{n+1}i$ </td>
  <td>==</td>
  <td>$(n+1) + \sum_{i=1}^{n}i$</td>
</tr>
<tr class='waiting'>
  <td>$(n+1) + \sum_{i=1}^{n}i$</td>
  <td>==</td>
  <td>$(n+1) + $<span class='frac'>$\frac{n(n+1)}2$</span></td>
</tr>
<tr>
  <td>$(n+1) + $<span class='frac'>$\frac{n(n+1)}2$</span></td>
  <td>==</td>
  <td class='frac moveUp'>$\frac{2(n+1)}2+\frac{n(n+1)}2 $</td>
</tr>
<tr>
  <td class='frac moveUp'>$\frac{2(n+1)}2+\frac{n(n+1)}2 $</td>
  <td>==</td>
  <td class='frac'>$\frac{n(n+1) + 2(n+1)}2$</td>
</tr>
<tr>
  <td class='frac'>$\frac{n(n+1) + 2(n+1)}2$</td>
  <td>==</td>
  <td class='frac'>$\frac{(n+2)(n+1)}2 $</td>
</tr>
<tr class='want'>
  <td>$\sum_{i=1}^{n+1}i$&nbsp;&nbsp; should </td>
  <td>==</td>
  <td class='frac'>$\frac{(n+1)(n+2)}2 $</td>
</tr>
</table>
</div>

# Picture Pending

# Our 'Proof' Again:

<pre style='color: red' class='fadein no_method'>
NoMethodError: undefined method `new' for Integer:Class
</pre>

    @@@ ruby
    describe 'proving that sum_up_to(n) == n(n + 1)/2' do
      it 'should be true for i=1' do
        sum_up_to(1).should == (1*2)/2
      end

      it 'should be true for n+1 if it is true for n' do
        n = Integer.new


      end
    end

# We are having difficulties

    @@@ ruby
    require 'impossible'

    describe 'proving that sum_up_to(n) == n(n + 1)/2' do
      it 'should be true for i=1' do
        sum_up_to(1).should == (1*2)/2
      end

      it 'should be true for n+1 if it is true for n' do
        n = Integer.new
        stub(sum_up_to(n)) { n(n + 1) / 2 }
        sum_up_to(n + 1).should == (n + 1)(n + 2) / 2
      end
    end

# All we can really do in RSpec

    @@@ ruby
    it 'sum_up_to(n) should be n(n + 1)/2' do
      20.times do |n|
        n += 1
        sum_up_to(n + 1).should == (n + 1)(n + 2) / 2
      end
    end

<!SLIDE padded>

![picture](images/delicious.png)
# Axiom of Induction

Given a set S where:

* 0 is in S
* For a natural number n, if n is in S, n + 1 is in S

Then S contains every natural number.

<!SLIDE padded>
# Everything in Ruby is an Object

# An Object is not a Platonic Ideal



<!SLIDE padded>

## Why not prove things in RSpec?

<!SLIDE big>
Unit tests are heuristics rather than proofs

<!SLIDE padded>

    @@@ ruby
    describe '#eat_mushroom' do
      it 'should make someone bigger' do
        alice = User.create(:name => 'Alice')
        alice.eat_mushroom
        alice.should be_bigger
      end
    end

# Obligatory Cat Photo Slide

# How To Solve It

_George Polya_ (1888-1985)
![picture](images/howtosolveit.jpeg)

<!SLIDE padded>

> It is foolish to answer a question you do not understand. It is sad to
> work for an end you do not desire.

<!SLIDE padded>

    @@@ ruby
    describe 'When you go down the rabbit hole' do
      before do
        visit '/rabbit_hole'
      end

      it 'lets you see a garden' do
        click_link 'Look Through Small Door'
        Garden.first.should be_present
      end
    end

<!SLIDE padded>

> If you can't solve a problem, then there is an easier problem you
> can't solve. Find it.

<!SLIDE>

<pre style='color:red'>
     Failure/Error: visit '/rabbit_hole'
     ActionController::RoutingError:
       No route matches [GET] "/rabbit_hole"
</pre>

<pre style='color:red'>
     Failure/Error: visit '/rabbit_hole'
     ActionController::RoutingError:
       uninitialized constant RabbitHoleController
</pre>


<pre style='color:red'>
     Failure/Error: visit '/rabbit_hole'
     AbstractController::ActionNotFound:
       The action 'index' could not be found for RabbitHoleController
</pre>


<pre style='color:red'>
     Failure/Error: visit '/rabbit_hole'
     ActionView::MissingTemplate:
       Missing template rabbit_hole/index, application/index with {:handlers=>[:erb, :builder, :coffee, :haml], :formats=>[:html], :locale=>[:en, :en]}. Searched in:
         * "~/wonderland/app/views"
</pre>

<!SLIDE padded>

> We need heuristic reasoning when we construct a strict proof as we
> need scaffolding when we erect a building. 


<!SLIDE big>

## In conclusion:

<!SLIDE big>

Approaching tasks in small chunks is more logical and mathematical

<!SLIDE big>

Test Driven Development is a good learning tool for the mathematically minded

<!SLIDE big>

Understanding the heuristics behind a subject increases our ability to impart knowledge


# THANK YOU!

Follow me at @alenia

Any comments much appreciated. Please email me at:
daniela.wellisz@gmail.com

I work at SharesPost. And yes, we're hiring.

#### Comic credits:

* Purity by Randall Monroe, XKCD
* Little Gauss by Horusart on DeviantArt
* Math is Delicious t-shirt design, Jeph Jaques, questionablecontent.net
