package YUM::RepoQuery::Schema::Filelists::Version10::Packages;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("packages");
__PACKAGE__->add_columns(
  "pkgkey",
  { data_type => "INTEGER", is_nullable => 0, size => undef },
  "pkgid",
  { data_type => "TEXT", is_nullable => 0, size => undef },
);
__PACKAGE__->set_primary_key("pkgkey");


# Created by DBIx::Class::Schema::Loader v0.04005 @ 2008-10-19 15:35:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9bYaI4VWfGTT8cDGXuSvYQ

__PACKAGE__->has_many(
    'filelist',
    'YUM::RepoQuery::Schema::Filelists::Version10::Filelist',
    { 'foreign.pkgkey' => 'self.pkgkey' },
);


1;

__END__
=pod

=head1 NAME

YUM::RepoQuery::Schema::Filelists::Version10::Packages

=head1 VERSION

version 0.002

=head1 AUTHOR

Chris Weyl <cweyl@alumni.drew.edu>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2011 by Chris Weyl.

This is free software, licensed under:

  The GNU Lesser General Public License, Version 2.1, February 1999

=cut

