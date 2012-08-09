## Inspiration for this talk

One day, I was coding with my pair and we wound up in a situation where
we needed to implement something that required a nifty algorithm that
used recursion, namely turning this hash:

  { a: 
    { b:
      { c: 'd' },
      { e: 'f' }
    },
    g: 'h'
  }

into something that looks like this:

  {
    [ a, b, c ] => 'd',
    [ a, b, e ] => 'f',
    [ g ] => 'h'
  }

Now it's not every day that you run into these little logic puzzles but
we were both the kind of people who found the puzzle fun, especially in
the land of Ruby where there are so many neat hash- or array-looping
methods to draw from. My pair, not being from a mathematical background,
asked me if as a math major I saw much recursion.  I used this as an
opportunity to try to explain proofs by induction.

Now if you've never come across proofs by induction before, induction is
essentially backwords-recursion.  It is a way of proving properties of
integers by showing that it is true for 1, and then showing that IF it's
true for some number n, it's also true for n+1

// Should I say this?
Now, in trying to explain it to him however, I hit a roadblock since he didn't understand some "mathese" that I took for granted.  

This realization lead to some exploring of how to explain math to
Rubyists, since mathematics and development seem so fundementally
similar.

### A bit about me

When I was 16, I 'knew' in the way 16-year-olds do that I wanted to be a
mathematician. I was one of those math-y kids who sneered at sciences
for being "impure".  

![picture](purity.png)

Most of that is that when I think of things, I think of them
artistically and theoretically, as puzzle pieces that fit together.
Numbers and equations never particularly 'clicked' with me.

The few times I tried my hands at programming, it was in the context of
one of those C++ intro classes where you're given a lot of memorization 
and not much in the way of reasons. 

I got out of math

A year and a half ago I finally felt like I found something that I
enjoyed in the same way when I went to a Railsbridge

![picture](railsbridge.png)

Suddenly I once again felt the joy in problem solving that I love when I
do math.  And the tasks set for me seemed very intuitive to my logical mind.

I think that the exciting familiarity I felt when learning Ruby had a
lot to do with 

