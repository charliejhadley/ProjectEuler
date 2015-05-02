(* ::Package:: *)

BeginPackage["Euler20`"]

fact::usage="fact[n] computes the nth factorial;
solution

Begin["`Private` "]

fact[1]=1;
fact[2]=2;
fact[n_]:=fact[n]=n*fact[n-1];

solution=648

End[]

EndPackage[]


