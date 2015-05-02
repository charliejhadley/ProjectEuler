(* ::Package:: *)

BeginPackage["Euler3`"]

largestFactor::usage="largestFactor[targer] uses continuous division to determine the largest factor of target";
solution

Begin["`Private`"]

largestFactor[target_Real]:=Block[
{
number2Factor=target,
currentDivisor=2.,
largestDivisor=0.
},
While[
currentDivisor=!=number2Factor,
If[Mod[number2Factor,currentDivisor]==0,
largestDivisor=currentDivisor;number2Factor=(number2Factor/currentDivisor);currentDivisor=2.,
currentDivisor++
]
];
largestDivisor=currentDivisor
]

solution=4613732;

End[]

EndPackage[]


