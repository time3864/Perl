#!/usr/bin/env perl
 
#use warnings; #use perl -w program.pl #!/usr/bin/env perl -w #use diagnostics; use utf8; use strict;
use strict;
use feature "state";
 
goto SKIP01;
 
SKIP01:
print "\nTest01\n";
print "Regular Expressions!\n";
$_ = "yabba dabba doo";
if(/abba/){
print "It matched!\n";
}

$_ = "lala3";
if(/\P{Space}/){
print "The string has no whitespace.\n";
}else{
print "The string has some whitespace.\n";
}

$_ = "lala 3";
if(/\p{Space}/){
print "The string has some whitespace.\n";
}else{
print "The string has no whitespace.\n";
}
if(/\P{Space}/){
print "The string has some whitespace.\n";
}else{
print "The string has no whitespace.\n";
}

if(/\p{Digit}/){
print "The string has a digit at least.\n";
}else{
print "The string has no digit.\n";
}

if (/\p{Hex}\p{Hex}/) { 
print "The string has a pair of hex digits.\n";
}else{
print "The string has no hex digits.\n";
}

$_= "USB 3.1 SuperspeedPLUS 10 Gb/s";
if(){
print "USB 3.1 SuperspeedPLUS 10 Gb/s matches something here.\n";
}else{
print "Nothing\n";
}





 
print "\n";
