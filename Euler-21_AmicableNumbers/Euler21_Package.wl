(* ::Package:: *)

BeginPackage["Euler21`"]

divisors::usage="divisors[int,knownPrimes,"Sum "] calculates the sum of all divisors of int, utilising the provided known primes to calculate the sum of divisors";
eratosSieve::usage="eratosSieve[max] finds all primes less than max, using Eratosthenes method";
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


divisors[int_Real,knownPrimes_,"Sum"]/;int<Max[knownPrimes]:=Block[{
primeFactors,
exponents,
exponentF
},
exponentF[primeFactor_]:=Length@Select[NestWhileList[#*primeFactor&,primeFactor,#<int&],Mod[int,#]==0&];
primeFactors=Select[knownPrimes[[;;FirstPosition[knownPrimes,a_/;a>int][[1]]]],Mod[int,#]==0&];
exponents=(exponentF[#]&/@primeFactors)
;
Times@@(Plus@@@MapThread[{1}~Join~Table[#1^i,{i,#2}]&,{primeFactors,exponents}])-int
];

solution=31626

End[]

EndPackage[]


