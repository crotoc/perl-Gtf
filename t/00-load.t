#!perl
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Gtf' ) || print "Bail out!\n";
}

diag( "Testing Gtf $Gtf::VERSION, Perl $], $^X" );
