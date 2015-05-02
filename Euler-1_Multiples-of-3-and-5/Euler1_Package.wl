(* ::Package:: *)

BeginPackage["Euler1`"]

sumMultiples::usage="sumMultiples[max, factors] gives the total of all multiples of factors below max";
solution

Begin["`Private`"]

sumMultiples[max_,factors_List]:=
Total[Select[Range[max-1],Function[x,Or@@Map[Mod[x,#]==0&,factors]]]];

solution=233168;

End[]

EndPackage[]


