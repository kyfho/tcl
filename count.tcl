#!/usr/local/bin/tclsh8.6
set fid [open /home/g/sam]
set content [read $fid]
close $fid
set now 1402076400
#set now [clock seconds]
set records [split $content "\n"]
foreach rec $records {
 set time [lindex $rec 3]
 set code [lindex $rec 6]
 if { $time > [expr {$now -120}] } {
  lappend codes $code
 }
}
set ucodes [lsort -unique $codes]
foreach z $ucodes {
 set w [lsearch -all -inline $codes $z]
 set v [llength $w]
 puts "$z $v"
} 
