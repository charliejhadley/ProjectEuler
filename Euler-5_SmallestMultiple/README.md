# Smallest Multiple

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

```Mathematica
<<Euler5`
factors = {11, 13, 14, 15, 16, 17, 18, 19};
range = Range[20, 300000000, 20];
commonFactors[factors, range]
```

