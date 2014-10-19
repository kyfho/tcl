#!/usr/local/bin/tclsh8.6
proc avg args {
set n 0
set t 0
foreach arg $args {
set n [expr {$n + 1}]
set t [expr {$t + $arg}]
}
puts "Avg is [expr {$t / 1.0 / $n}]"
}

#avg 4 5.5 9 12
