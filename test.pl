# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..5\n"; }
END {print "not ok 1\n" unless $loaded;}
use Math::Base36 ':all';
$loaded = 1;
print "ok 1\n";

######################### End of black magic.

# Insert your test code below (better if it prints "ok 13"
# (correspondingly "not ok 13") depending on the success of chunk 13
# of the test code):


my $num = '3297';
my $b36 = '2JL';


if(encode_base36($num) eq $b36) {
	print "ok 2\n";
} else {
	print "not ok 2\n";
}

if(decode_base36($b36) == $num) {
	print "ok 3\n";
} else {
	print "not ok 3\n";
}

if(decode_base36(encode_base36($num)) == $num) {
	print "ok 4\n";
} else {
	print "not ok 4\n";
}

if(decode_base36('ZZZZZZZZZZZZZZZZZZZZZZZZZ') == 808281277464764060643139600456536293375 ) {
	print "ok 5\n";
} else {
	print "not ok 5\n";
}


