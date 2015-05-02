(* ::Package:: *)

BeginPackage["Euler2`"]

fib::usage="fib[n] uses memoization to calculate the nth Fibonacci number";
solution

Begin["`Private`"]

fib[1]=1;
fib[2]=2;
fib[n_]:=fib[n]=fib[n-1]+fib[n-2]

solution=4613732;

End[]

EndPackage[]


