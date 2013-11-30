#!/usr/bin/env perl

#use warnings; #use perl -w program.pl #!/usr/bin/env perl -w
#use diagnostics;
use utf8;

#goto SKIP12;

print "\nTest 01:\n";
print "Try \" : ";
print "hello\n";
print "Try \' : ";
print 'hello\n';
print "\n";
print "Try \` : ";
print `hello\n`;
print "\n";
print "Try double \\ : ";
print 'hello\\n';
print "\n";

print "\nTest 02:\n";
print "Try . : ";
print "hello "."how "."are "."you?"."\n";
print "Try + : ";
print "hello "+"how "+"are "+"you?"."\n";
print "Try x : ";
print "hello " x3 . "\n";
print "Try x(4+1) : ";
print "hello " x(4+1) . "\n";
print "Try x2x2 : ";
print "hello " x2x2 . "\n";
print "Try \"2*3\" : ";
print "2*3"."\n";
print "Try \"3\"*\"2\" : ";
print "3"*"2"."\n";
print "Try \"a\"*\"b\" : ";
print "a"*"b"."\n";
print "Try \"a\"*\"3\" : ";
print "a"*"3"."\n";
print "Try \"2a\"*\"3\" : ";
print "2a"*"3"."\n";

print "\nTest 03:\n";

$number_01 = 99;
print 'Try $number_01 = 99 : ';
print "$number_01\n";
print 'Try $number_01 * $number_01 : ';
print $number_01 * $number_01."\n";

$string_01 = 'hello';
print 'Try $string_01 = \'hello\' : ';
print "$string_01\n";

$string_02 = "kitty";
print 'Try $string_02 = "kitty" : ';
print "$string_02\n";

$string_03 = $string_01." ".$string_02;
print 'Try $string_03 = $string_01." ".$string_02 : ';
print "$string_03\n";

$string_03 .= "!!!";
print 'Try $string_03 .= "!!!" : ';
print "$string_03\n";

print 'Try $string_01 cute $string_02!!! : ';
print "$string_01 cute $string_02!!!\n";

print 'Try uninitialized variable $uninitialized : ';
print "$uninitialized"."\n";

$string_04 = "Red";
print 'Try $string_04 : ';
print "$string_04\n";
print 'Try ${string_04}dit : ';
print "${string_04}dit\n";



print "\nTest 04\n";
$alef = chr(0x05D0);
print "$alef\n";
$alpha = chr(hex('03B1'));
print "$alpha\n";
$omega = ord('$alpha');
print "$omega\n";
print "\x{03B1}\x{03C9}\n";


print "\nTest 05\n";
print 'Try $equal \'fred\' eq \'fred\' : ';
$equal = 'fred' eq 'fred';
print "$equal\n";
print 'Try $nequal \'fred\' ne \'fred\' : ';
$nequal = 'fred' ne 'fred';
print "$nequal\n";
print 'Try $number_nequal = 1 eq 0 : ';
$number_nequal = 1 eq 0;
print "$number_nequal\n";



print "\nTest 06\n";
$if_01 = 999;
$if_02 = 888;
$if_loop = 3;

while($if_loop){
if($if_01 > $if_02){
print '$if_01 > $if_02'."\n";
}elsif($if_01 == $if_02){
print '$if_01 == $if_02'."\n";
}else{
print '$if_01 < $if_02'."\n";
}
$if_loop -= 1;
$if_02 += 111;
}


SKIP07:
print "\nTest 07\n";
print "Key in anything : ";
$line = <STDIN>;
if($line eq "\n"){
print "Fuck you!!!\n";
}else{
print "$line";
}
$chomp = "Enter : \n";
print 'Try to print $chomp initalized as $chomp = "Enter : \n"'."\n";
print "$chomp";
print "Printed\n";
chomp($chomp);
print 'Try chomp($chomp) : ';
print "$chomp";
print "Printed\n";
$chomp = "3 new lines\n\n\n";
print "$chomp";
print "Printed\n";
chomp($chomp);
print "$chomp";
print "Printed\n";

SKIP08:
print "\nTest 08\n";
$nodef = "Never display";
$nodef = undef;
print 'Try undef : ';
print "$nodef\n";
$nodef = "Defined";
print 'Try define : ';
print "$nodef\n";
$nodef = 1;
$nodef .= " + 1";
print "$nodef\n";


SKIP09:
print "\nTest 09\n";
$test_array[0] = "Once ";
$test_array[1] = "upon ";
$test_array[2] = "a ";
$test_array[3] = "time.";
$loop = 0;
print 'Last element of array = $#array_name'."\n";
while($loop <= $#test_array){
print "$test_array[$loop]";
$loop++;
}
print "\n";
print "Print in reverse order -4 to -1\n";
$loop = -($#test_array+1);
while($loop < 0){
print "$test_array[$loop]";
$loop++;
}
print "\n";

SKIP10:
print "\nTest 10\n";
print 'Try @range = (1..100) : '."\n";

@range = (1..100);
$loop = 0;
while($loop <= $#range){
print "$range[$loop] ";
$loop++;
}
print "\n";

@words = qw{Today is Monday, 18th November 2013.};
$loop = 0;
while($loop <= $#words){
print "$words[$loop] ";
$loop++;
}
print "\n";

@demi = qw(/usr/src/lala/lolo/);
$loop = 0;
while($loop <= $#demi){
print "$demi[$loop]"."()";
$loop++;
}
print "\n";


SKIP10:
print "\nTest 10\n";
print 'Try @array = 1..10 : '."\n";
@array = 1..10;
$loop = 0;
while($loop <= $#array){
print "$array[$loop] ";
$loop++;
}
print "\n";

print 'Try pop(@array) : '."\n";
pop(@array);
$loop = 0;
while($loop <= $#array){
print "$array[$loop] ";
$loop++;
}
print "\n";

print 'Try push(@array,10) : '."\n";
push(@array,10);
$loop = 0;
while($loop <= $#array){
print "$array[$loop] ";
$loop++;
}
print "\n";

print 'Try push(@array,11..20) : '."\n";
push(@array,11..20);
$loop = 0;
while($loop <= $#array){
print "$array[$loop] ";
$loop++;
}
print "\n";

print 'Try shift(@array) : '."\n";
shift(@array);
$loop = 0;
while($loop <= $#array){
print "$array[$loop] ";
$loop++;
}
print "\n";

print 'Try unshift(@array,0..1) : '."\n";
unshift(@array,0..1);
$loop = 0;
while($loop <= $#array){
print "$array[$loop] ";
$loop++;
}
print "\n";

print 'Try splice(@array,10) : '."\n";
splice(@array,10);
$loop = 0;
while($loop <= $#array){
print "$array[$loop] ";
$loop++;
}
print "\n";

print 'Try splice(@array,10) : '."\n";
splice(@array,10);
$loop = 0;
while($loop <= $#array){
print "$array[$loop] ";
$loop++;
}
print "\n";


print 'Try splice(@array,3,2) : '."\n";
splice(@array,3,2);
$loop = 0;
while($loop <= $#array){
print "$array[$loop] ";
$loop++;
}
print "\n";

print 'Try splice(@array,3,0,3..4) : '."\n";
splice(@array,3,0,3..4);
$loop = 0;
while($loop <= $#array){
print "$array[$loop] ";
$loop++;
}
print "\n";

print 'You can just print it with print "@array"!!! WTF!!!'."\n";
print "@array\n";







SKIP11:
print "\nTest 11\n";

print 'Try foreach $rock(qw/ diamond emerald sappire magma /) : '."\n";
foreach $rock(qw/ diamond emerald sappire magma /){
print "$rock\n";
}
print "Try to print \$rock after that: @rock\n";
print "Try to print total number of \$rock element : $#rock\n";
@rock = qw/ diamond emerald sappire magma /;
print "Try to print \$rock after assignment : @rock\n";

print 'Try to use foreach $earth(@rock)'."\n";
foreach $earth(@rock){
print "$rock";
$rock = "|$rock|";
print " $rock ";
}
print "\n";
print "@rock";
print "\n";

print 'Try foreach(0..$#rock) print "$rock[$_]\n" : '."\n";
foreach(0..$#rock){
print "$rock[$_]\n";
}

print 'Try @rock = reverse(@rock) : ';
@rock = reverse(@rock);
print "@rock\n";

print 'Try @rock = sort(@rock) : ';
@rock = sort(@rock);
print "@rock\n";


SKIP12:
print "\nTest12\n";
@books = sort(qw(Good_man Seven_sword Economy_Finance LKW FBI));
print "@books"."\n";
$book_n = @books;
print "Total number of books : $book_n\n";
print "Total number of books : ".($#books+1)."\n";
push(@books,"Japanese");
print "@books"."\n";

@book01 = reverse(qw(Good_man Seven_sword Economy_Finance LKW FBI));
$book02 = reverse(qw(Good_man Seven_sword Economy_Finance LKW FBI));
print '@book01 : ';
print "@book01\n";
print '$book02 : ';
print "$book02\n";

@essay = <STDIN>;

print "@essay\n";



print "\n";

