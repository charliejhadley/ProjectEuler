(* ::Package:: *)

BeginPackage["Euler11`"]

getNeighbours::usage="getNeighbours[row,col] gets the horizontal, vertical and diagonal neighbours of the element at position {row, col}";
solution

Begin["`Private`"]

getNeighbours[row_,col_]:=Quiet@Block[{

vertical,
horiz,
leftdiag,
rightdiag
},

vertical=grid[[row-1;;row+2,col]];
horiz=grid[[row,col-1;;col+2]];
leftdiag=Table[grid[[row+i,col+i]],{i,{1,0,1,2}}];
rightdiag=Table[grid[[row+i,col-i]],{i,{1,0,-1,-2}}];

Cases[{vertical,horiz,leftdiag,rightdiag},{Repeated[_Integer,{4}]}]

];

solution=837799

End[]

EndPackage[]


