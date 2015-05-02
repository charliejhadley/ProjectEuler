(* ::Package:: *)

BeginPackage["Euler9`"]

solution

Begin["`Private`"]

solution=possibleABs=Subsets[Range[990],{2}];
sumLess1000=Cases[possibleABs,{a_,b_}/;a+b<1000:>{a,b,1000-a-b}];
Times@@@Select[sumLess1000,#[[1]]^2+#[[2]]^2==#[[3]]^2&];

End[]

EndPackage[]


