(* ::Package:: *)

BeginPackage["Euler8`"]

findMaxSet::usage="findMaxSet[target, setSize] finds the largest set of integers of setSize from target";
number;
solution

Begin["`Private`"]
page=Import["https://projecteuler.net/problem=8","Plaintext"];
number=FromDigits@Flatten@IntegerDigits@ToExpression@Flatten@StringSplit[StringCases[page,"\n "~~a:DigitCharacter..~~b__~~"\n   \nF":>StringTrim[a<>b]],"\n"];
findMaxSet[target_,setSize_]:=Block[
{
digits=IntegerDigits[target],
sets
},
sets=Table[Take[digits,{i,i+setSize-1}],{i,1,Length[digits]-setSize-1}];
{#,Times@@@#}&[MaximalBy[sets,Times@@#&]]
]


solution=23514624000;

End[]

EndPackage[]


