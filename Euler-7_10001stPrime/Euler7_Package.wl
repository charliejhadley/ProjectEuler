(* ::Package:: *)

BeginPackage["Euler7`"]

nthPrimeByEratos::usage="nthPrimeByEratos[nth] uses Erathosenes' Sieve to find the nth prime number, up to approximately n = 100,000"
solution

Begin["`Private`"]

nthPrimeByEratos[nth_]:=Block[
{
integers=N@Range[2,2*nth+nth*Log[nth]],
primes=2.,
multiples={},
cnt=0
},
While[
cnt<nth,
cnt++;
primes=SelectFirst[Complement[integers,multiples],#>primes&,Break[]];
multiples=Union@Join[multiples,NestWhileList[#+primes&,primes,#<2*nth+nth*Log[nth]&]];
];
{cnt,primes}
];

solution=104743;

End[]

EndPackage[]


