# Notes about Polya's _How to Solve It_

### Breaking down problems into smaller ones

> If you can't solve a problem, then there is an easier problem you
> can't solve. Find it.


We use this in testing because when we write tests first, we restrict
ourselves to the simple problem. 

_Here I should introduce a running analogy of a story that is
implemented outside-in.  First we write a cucumber test, and then we
move into the specifics of part of the controller or model
implementation_

When testing from the outside-in we start at the crux of the big problem
and then hone in on little ones.

------------------

Find something that amounts to DRY:
Methods are theorems and lemmas. Something built once can be improved upon.

-------------

### Understanding the problem

> It is foolish to answer a question you do not understand. It is sad to
> work for an end you do not destire.

TDD Assertains that we understand the problem before we tackle it.
Thus, we bound our work by what we know. If we can't write the test, we
don't understand the problem, and therefore should not attempt to write
the code to implement the feature for fear of thrashing.  Granted, in a
'waterfall' world with an architect, we would understand the issue because
we would have the many-page spec telling us exactly what we need to write.
However, _transition to why I love ttd as a learning tool_ And this is
one of my favorite things about Test Driven Development and its
similarities to Mathematics.

----

### TDD as a learning tool

Polya's book is structured Socratically, as a conversation between a
teacher of how to solve math problems and a student. _Find a relivant
examle_.  Test Driven Development is fantastic as a learning tool
because it allows the student to socratically guide themselves through
the code.  The student is constantly focused on the end goal since the
concept which they are trying to prove is codified in the first
integration test.  When they get to the step of "Alright, I have my
controller. What do I do next?" the test come back with _example_.

