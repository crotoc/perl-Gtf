package Gtf::Gtf;
use strict;
use warnings;
use parent qw(Gtf::Bio::Root::Root);
use Data::Dumper;
use parent qw(Bundle::Test);
use parent qw(Bundle::Multifork);
use parent qw(Bundle::MCEMap);
use parent qw(Bundle::File);
use parent qw(Bundle::ObsoleteMethods);

use qw(MyBase::Mysub);
use Data::Dumper;
use String::Random;
use B qw( svref_2object );
use File::Path qw(make_path remove_tree);

=head1 NAME

Gtf:: - The great new Gtf::!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use test;

    my $foo = test->new();
        ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 function1

=cut


sub new {
    my $class = shift;
    my $self = $class->SUPER::new();
    bless $self,$class;
    $self->setMethod("threads"=>5);
    $self->setMethod("chunk_size"=>1);
    return $self;
}



=head2 function2

=cut

# sub function2 {
# }

=head1 AUTHOR

Rui Chen, C<< <crotoc at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-test at rt.cpan.org>, or through
the web interface at L<https://rt.cpan.org/NoAuth/ReportBug.html?Queue=test>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc test


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<https://rt.cpan.org/NoAuth/Bugs.html?Dist=test>

=item * CPAN Ratings

L<https://cpanratings.perl.org/d/test>

=item * Search CPAN

L<https://metacpan.org/release/test>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2021 by Rui Chen.

This is free software, licensed under:

  The Artistic License 2.0 (GPL Compatible)


=cut




1;
