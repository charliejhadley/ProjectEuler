# 10001st Prime

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

```Mathematica
possibleABs = Subsets[Range[990], {2}];
sumLess1000 = 
  Cases[possibleABs, {a_, b_} /; a + b < 1000 :> {a, b, 1000 - a - b}];
Times @@@ Select[sumLess1000, #[[1]]^2 + #[[2]]^2 == #[[3]]^2 &]
```

