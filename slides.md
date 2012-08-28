# Why is a Math Proof like a Unit Test?
<div class='lc fadein'>Better known as Lewis Carroll</div>
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

# Introduction to Induction

Pardon my pseudo-code!

    @@@ ruby
    describe 'proving that sum(n) == n*(n + 1)/2' do
      it 'should be true for i=1' do
        sum(1).should == (1*2)/2
      end

      it 'should be true for n+1 if it is true for n' do

        stub(sum(n)) { n*(n + 1) / 2 }
        sum(n + 1).should == (n + 1)*(n + 2) / 2
      end
    end

(Visit http://github.com/alenia/mathese/lib/basic_sum.rb for an
example stubbable object!)

# Summation Notation

<div class='math'>
$$\sum_{i=1}^n i = 1 + 2 + 3 + \ldots + n$$
</div>

    @@@ ruby
    def sum(n)
      return 1 if n == 1
      n + sum(n-1) if n > 1
    end

# Summation Notation

<div class='math'>
$$\sum_{i=1}^n f(i) = f(1) + f(2) + f(3) + \ldots + f(n)$$
</div>

    @@@ ruby
    def sum(n, func)
      return func[1] if n == 1
      func[n] + sum(n-1) if n > 1
    end

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
<div class='bracket_right fadein'><span>}</span>n+1</div>
<div class='bracket_bottom fadein'><div>}</div>n</div>
</div>
# Introduction to Induction

<div class='math' style='margin-bottom:2em; font-size:2em;'>
Prove $\sum_{i=1}^n i = \frac{n*(n+1)}2$ for all $n$
</div>

    @@@ ruby
    describe 'proving that sum(n) == n*(n + 1)/2' do
      it 'should be true for i=1' do
        sum(1).should == (1*2)/2
      end

      it 'should be true for n+1 if it is true for n' do
        stub(sum(n)) { n*(n + 1) / 2 }
        sum(n + 1).should == (n + 1)*(n + 2) / 2
      end
    end

<!SLIDE>

<div class='math'>
<h2>For $n=1$:</h2>
</div>

<div class='math'>
$$\sum_{i=1}^1 i == 1 == \frac{1*2}2$$
</div>

    @@@ ruby
    it 'should be true for i=1' do
      sum(1).should == (1*2)/2
    end

<!SLIDE>

<div class='math'>
<h2>Assume $\sum_{i=1}^n i = \frac{n*(n+1)}2$ for some n:</h2>
</div>
<div class='math'>
<table class='math'>
<tr class='top'>
  <td>$\sum_{i=1}^{n+1}i$ </td>
  <td>==</td>
  <td>$(n+1) + \sum_{i=1}^{n}i$</td>
</tr>
<tr class='middle'>
  <td>$(n+1) + \sum_{i=1}^{n}i$</td>
  <td>==</td>
  <td>$(n+1) + $<span class='frac'>$\frac{n*(n+1)}2$</span></td>
</tr>
<tr class='waiting'>
  <td>$(n+1) + $<span class='frac'>$\frac{n*(n+1)}2$</span></td>
  <td>==</td>
  <td class='frac moveUp'>$\frac{n*(n+1) + 2*(n+1)}2 $</td>
</tr>
<tr>
  <td class='frac'>$\frac{n*(n+1) + 2*(n+1)}2$</td>
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

# All we can really do in RSpec

    @@@ ruby
    it 'sum(n) should be n*(n + 1)/2' do
      20.times do |n|
        n += 1
        sum(n + 1).should == (n + 1)*(n + 2) / 2
      end
    end


# Crazy awesome picture filler slide

# How To Solve It

_George Polya_ (1888-1985)
![picture](images/howtosolveit.jpeg)

<!SLIDE>

> It is foolish to answer a question you do not understand. It is sad to
> work for an end you do not desire.

<!SLIDE>

    @@@ ruby
    describe 'When you follow the yellow brick road' do
      before do
        visit '/yellow_brick_road'
      end

      it 'you can defeat a flying monkey' do
        click_link 'Battle Evil'
        FlyingMonkey.last.should be_defeated
      end
    end

<!SLIDE>

> If you can't solve a problem, then there is an easier problem you
> can't solve. Find it.  - Polya

<!SLIDE>

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


# Some better closing quote or image
 or don't people put a twitter handle here?
