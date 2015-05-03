(* ::Package:: *)

BeginPackage["Euler15`"]

fact::usage="fact[n] calculates n!";
combinations::usage="combinations[width,height] computes the diagonal paths across a grid graph with width and heigh with only two directions available";
solution

Begin["`Private`"]

fact[1]=1;
fact[2]=2;
fact[n_]:=fact[n]=n*fact[n-1];

combinations[gWidth_,gHeight_]:=fact[gWidth+gHeight]/(fact[gWidth] fact[gHeight]);

solution=137846528820

End[]

EndPackage[]


