#sicp book exercise 1.3: from 3 numbers, compute sum of squares of 2 biggest

proc sum-sq {x y} {
expr {$x * $x + $y * $y}
}
# % sum-sq 5 3
#34
#% sum-sq 5.4 3.1
#38.77

proc 2-biggest {x y z} {
set f [list $x $y $z]
set r [lsort -decreasing $f]
sum-sq [lindex $r 0] [lindex $r 1]
}
#% 2-biggest 2 3 4
#25
