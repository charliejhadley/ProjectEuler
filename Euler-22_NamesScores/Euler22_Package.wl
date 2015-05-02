(* ::Package:: *)

BeginPackage["Euler17`"]

splitCountInt::usage="spintCountInt[int] counts the letter characters in the British English spelling of the int";
solution

Begin["`Private`"]

nineteenWords={"one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"};tensWords={"twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"};
hundredWord="hundred";
thousandWord="one thousand";
nineteenNumbers=Range[19];
tensNumbers=Range[20,90,10];
hundredNumber=100;
thousandNumber=1000;
nineteenDict=Thread[nineteenNumbers->nineteenWords];
tensDict=Thread[tensNumbers->tensWords];
hundredDict=Table[i*100->(i/.nineteenDict)<>" hundred",{i,Range[1,9]}];
thousandDict=thousandNumber->thousandWord;
numberDictionary=Flatten@Join[{nineteenDict,tensDict,hundredDict,thousandDict}];
numberKnown=numberDictionary[[All,1]];

splitIntCount[int_Integer]/;MemberQ[numberKnown,int]:=StringCount[int/.numberDictionary,_?LetterQ]
splitIntCount[int_Integer]/;int<100:=Block[{split=Flatten@{splitInt[10*IntegerPart[int/10]],"-",
splitInt[10*FractionalPart[int/10]]}},
Total@StringCount[split,_?LetterQ]
]
splitIntCount[int_Integer]/;int<1000:=Block[{split=Flatten@{IntegerPart[int/100]/.nineteenDict,
"hundred and",
splitIntCount[100*FractionalPart[int/100]]
}},
Total[split/.a_String:>StringCount[a,_?LetterQ]]
];

solution=21124

End[]

EndPackage[]


