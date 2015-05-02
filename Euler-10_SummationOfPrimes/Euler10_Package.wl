(* ::Package:: *)

BeginPackage["Euler10`"]

eratosSieve::usage="eratosSieve[max_] finds all prime numbers under max";
solution

Begin["`Private`"]

eratosSieve[max_Real]:=Block[
{
integers=N@Range[2,max],
newPrimes=2.,
multiples,
primes
},
multiples=integers[[;;;;2]];
While[
newPrimes^2<max,
multiples=Union@Join[multiples,NestWhileList[#+2*newPrimes&,newPrimes^2,#<max&]];
newPrimes=SelectFirst[Complement[integers,multiples],#>newPrimes&,Break[]];
(*Print[multiples]*)
];
primes=Join[{2.},Complement[integers,multiples]];
{Length[primes],primes}
];

solution=142913828922

End[]

EndPackage[]


