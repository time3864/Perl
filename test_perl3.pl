#!/usr/bin/env perl

#use warnings; #use perl -w program.pl #!/usr/bin/env perl -w #use diagnostics; use utf8; use strict;
use strict;
use feature "state";

goto SKIP03;

SKIP01:
print "\nTest01\n";

print "$!\n";
#die "Test death!\n";
print "I am not die?\n";

open LOG, '>>', 'logfile';
if(!(open LOG, '>', 'logfile')){
	die "OMG!!! $!\n";
}
print 'Print error with $!',"\n";

print LOG "Try to write!\n";

print STDERR "STDERR, OMG!!!\n";

my @string_test = qw/ Ali Ahmad Ah_Kou Ah_Sam Alim /;
print LOG "@string_test\n";

select LOG;
print "OMG!!! Now all going to save in file!!! I can't see anything!!!\n";
# $| = 1;
select STDOUT;
print "ME BACK!!!\n";

print LOG "???\n";

close LOG;


if ( ! open STDERR, ">>/home/barney/.error_log") {
    die "Can't open error log for append: $!";
}

#use 5.010;
#say "say will automatically add new line.";


SKIP02:
print "\nTest02\n";

my $file_handle;
open $file_handle, '<', 'logfile2.txt'
or die "Couldn't open file : $!\n";

open my $ALOG, '>>', 'logfile';
while(<$ALOG>){
chomp;
}

open my $rocks_fh, '>>', 'rocks.txt' 
    or die "Could not open rocks.txt: $!";
foreach my $rock ( qw( slate lava granite ) ) {
    say $rocks_fh $rock
}

print $rocks_fh "limestone\n";
close $rocks_fh;


SKIP03:
print "\nTest03\n";

my %alcohol_drink;
$alcohol_drink{'beer'} = '5%';
$alcohol_drink{'vodka'} = '40%';
print %alcohol_drink;
print "\n";

my %soft_drink = ('coke', 'fanta', 'pepsi', '100-plus', 'sarsi', 'mirinda');
print %soft_drink;
print "\n";

my @cincai = %soft_drink;
print "@cincai\n";

%soft_drink = reverse %soft_drink;
@cincai = %soft_drink;
print "@cincai\n";

my %couple = (
'Yun' => 'Fung',
'Jing' => 'Steven',
'Phing' => 'Kang',
'Thin' => 'CK',
'Jia Wei' => 'Yee Hui',
);
print %couple;
print "\n";
@cincai = %couple;
print "@cincai\n";
print "@cincai[0]\n";
print "@cincai[1]\n";






















































print "\n";

