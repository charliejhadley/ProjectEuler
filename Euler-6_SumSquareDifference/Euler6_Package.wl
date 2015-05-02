(* ::Package:: *)

BeginPackage["Euler6`"]

(*see readme*)
solution

Begin["`Private`"]

solution=(sumOfSquares100 = Total[Range[100]^2];
squareOfSum100 = (Plus @@ Range[100])^2;
squareOfSum100 - sumOfSquares100);

End[]

EndPackage[]


