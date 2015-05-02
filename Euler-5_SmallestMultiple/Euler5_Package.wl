(* ::Package:: *)

BeginPackage["Euler5`"]

commonDivisors::usage="commonDivisors[factors, intRange] finds the smallest integer from intRange that is evenly divisible by all factors.";
solution

Begin["`Private`"]

commonDivisors[factors_,intRange_]:=SelectFirst[intRange,AllTrue[Reverse@factors,Function[x,Mod[#,x]==0]]&]

solution=232792560;

End[]

EndPackage[]


