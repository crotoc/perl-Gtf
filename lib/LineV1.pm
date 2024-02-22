package Gtf::LineV1;
use strict;
use Data::Dumper;
use base qw(Gtf::FeatureV1);

my @field = qw(seqname source feature start end score strand frame attr);

sub new {
    my ($class,$line) = @_;
    my @F =split/\t/,$line;
    my $hash;
    #print Dumper($hash);
    my $self = $class->SUPER::new();
    bless $self, $class;

    map {$self->setMethod($field[$_]=>$F[$_]);} 0..$#field;
    $hash = $self->_gtfinfo2hash($self->attr);

    $self->setMethod(%$hash);

    return $self;
}



1;



