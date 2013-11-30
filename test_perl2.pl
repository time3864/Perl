#!/usr/bin/env perl
 
#use warnings; #use perl -w program.pl #!/usr/bin/env perl -w #use diagnostics; use utf8; use strict;
use strict;
use feature "state";
 
goto SKIP06;
 
SKIP01:
print "\nTest01\n";
 
&print_something;
 
sub print_something{
print "Just print!\n";
}
 
print_something;
 
 
sub search{
     my($what, @array) = @_;
     foreach(0..$#array){
         if($what eq $array[$_]){
             return $_;
         }
     }
     return -1;
}
 
my ($intend) = 200;
my (@afford) = qw(0 10 100 1000 10000 100000); print 'Try search($intend, @afford) : '; print search($intend, @afford) . "\n";
 
 
 
 
 
SKIP02:
print "\nTest02\n";
sub countdown
{
my (@abc, @def) = @_;
print @abc;
print @def;
splice(@abc,$#abc,0,@def);
return @abc;
#return @abc..@def;
}
 
my @ccca = 1..10;
my @cccb = 100..110;
 
print 1..10;
print "\n";
 
print @ccca;
print "\n";
foreach (0..$#ccca){
print "$ccca[$_] ";
}
print "\n";
 
print @cccb;
print "\n";
foreach (0..$#cccb){
print "$cccb[$_] ";
}
print "\n";
 
print 'Try countdown(@ccca, @cccb) : '."\n"; my @testxx = countdown(@ccca, @cccb); print @testxx; print "\n"; print @testxx; print "\n"; foreach (0..$#testxx){ print "$testxx[$_] "; } print "\n";
 
 
SKIP03:
print "\nTest03\n";
 
sub call_me_maybe
{
state $temm = 0;
my ($var) = @_;
$temm += $var;
return $temm;
}
 
print 'Try call_me_maybe(1) : ';
print call_me_maybe(1);
print "\n";
 
print 'Try call_me_maybe(10) : ';
print call_me_maybe(10);
print "\n";
 
print 'Try call_me_maybe(44) : ';
print call_me_maybe(44);
print "\n";
 
print 'Try call_me_maybe(3) : ';
print call_me_maybe(3);
print "\n";
 
 
 
SKIP04:
print "\nTest04\n";
print "Type anything. Ctrl+Z to exit: \n";
while(<STDIN>){
print "I saw $_";
}
print "Type anything. Ctrl+Z to exit: \n";
while(defined(my $line = <STDIN>)){
print "I saw $line";
}
 
SKIP05:
print "\nTest05\n";
 
while (defined(my $linew = <>)) {
    chomp($linew);
    print "$linew\n";
}
 
my @string_test = qw/ Ali Ahmad Ah_Kou Ah_Sam Alim /;
print "@string_test","\n";
print @string_test,"\n";
 
#print sort <>;
 
print "@ARGV\n";




SKIP06:
print "\nTest06\n";
#print <>;
my $user = "Tang Yhing Yhing";
my $days = 2;
printf "Hello, %s. Your password expires in %d days!\n",$user, $days;

printf "Total amount in your account is : %g\n", 111.23;
printf "Total leave per year : %6d\n", 33;
printf "Try this : %s\n", "la la la";
printf "Try this : %10s\n", "la la la";
printf "Try this : %-15s\n", "flintstone";
printf "Try this : %12.10f\n", 22/7;
printf "Print %% with this %%%% : %d%%\n", 10;

my @items = qw( phone wallet keys glasses ring);
my $format = "The items are : \n" . ("%10s\n"x@items);

printf "The items are : \n".("%10s\n"x@items), @items;


SKIP07:
print "\nTest07\n";
open CONFIG, '<dino';
close CONFIG;
open BEDROCK, '>fred';
close BEDROCK;
open LOG, '>>logfile';
close LOG;
my $file_name = "hello_kitty";
open LOG2, '>>', $file_name;
close LOG2;

open CONFIG, '>>:encoding(UTF-8)', 'dino';
close CONFIG;

#open LOG, "@items";

print 'Perl understand these encodings: ';
print 'perl -MEncode -le "print for Encode->encodings(\':all\')"',"\n";

print 'Create file with carriage-return/linefeed pair: open BEDROCK, \'>:crlf\' $file_name;',"\n";

print 'binmode STDOUT, \':encoding(UTF-8)\';',"\n";

my $file_open = open new_file_handler, '>>', 'new_file';
if($file_open){
print "File opened.\n";
}else{
print "File opened failed!\n";
}
close new_file_handler;











 
print "\n";
