package YUM::RepoQuery::Schema::Primary::Version10::Requires;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("requires");
__PACKAGE__->add_columns(
  "name",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "flags",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "epoch",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "version",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "release",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "pkgkey",
  { data_type => "INTEGER", is_nullable => 0, size => undef },
  "pre",
  { data_type => "BOOLEAN", is_nullable => 0, size => undef },
);


# Created by DBIx::Class::Schema::Loader v0.04005 @ 2008-10-19 14:13:35
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LQm2Zw2nQRE13SuOUGEi9Q

__PACKAGE__->belongs_to(
    'package',
    'YUM::RepoQuery::Schema::Primary::Version10::Packages',
    { 'foreign.pkgkey' => 'self.pkgkey' },
);


1;

__END__
=pod

=head1 NAME

YUM::RepoQuery::Schema::Primary::Version10::Requires

=head1 VERSION

version 0.002

=head1 AUTHOR

Chris Weyl <cweyl@alumni.drew.edu>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2011 by Chris Weyl.

This is free software, licensed under:

  The GNU Lesser General Public License, Version 2.1, February 1999

=cut

