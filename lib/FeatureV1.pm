package Gtf::FeatureV1;
use strict;
use Data::Dumper;


my @P = qw /chr source feature start end score strand frame gene_id gene_version transcript_id transcript_version exon_number gene_name gene_source gene_biotype transcript_name transcript_source transcript_biotype exon_id exon_version protein_id protein_version/; ##ignore "tag"
my %PARAMS;


sub new {
    my ($class,$info) = @_;
    my $hash = _gtfinfo2hash($class,$info);
    #print Dumper($hash);
    my $self = $class->SUPER::new();


    bless $self, $class;
    $self->setMethod(%$hash);

    return $self;
}


sub _gtfinfo2hash{
    my ($self,$str) = @_;
    my @f=split/;/,$str;
    my $hash;
    map {s/^\s//,if $_;my ($key,$value) = split/\s/;$value=~s/\"//g;$hash->{$key}=$value;} @f;
    return $hash;    
}


1;



