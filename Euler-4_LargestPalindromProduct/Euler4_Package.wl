(* ::Package:: *)

BeginPackage["Euler4`"]

palindromeProducts::usage="palindromeProducts[ndigits] finds the largest palindrome product of ndigit numbers.";
solution

Begin["`Private`"]

palindromeProducts[ndigits_]:=Block[
{
legalNumbers=DeleteCases[Range[1+1*10^(ndigits-1),1*10^ndigits-1],Alternatives@@Range[1*10^(ndigits-1),1*10^(ndigits),10]],
palindromes
},
Sort[Select[Times@@@Tuples[legalNumbers,2],Reverse[IntegerDigits[#]]==IntegerDigits[#]&]][[-1]]
]

solution=906609;

End[]

EndPackage[]


