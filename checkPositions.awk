FNR == NR {
  f1[$2,$1] = $2
  f1_pos[$2, $1] = $4
  next
}  

f1_pos[$1, $2] {
  if ( ($3 - f1_pos[$1,$2])^2 <101) print f1[$1,$2];
}
