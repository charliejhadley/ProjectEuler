# 10001st Prime

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

```Mathematica
<<Euler10`
AccountingForm[Total@eratosSieve[2000000.]]
```

