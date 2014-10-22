package YUM::RepoQuery::Schema::Primary::Version10::Packages;

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
  "name",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "arch",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "version",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "epoch",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "release",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "summary",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "description",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "url",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "time_file",
  { data_type => "INTEGER", is_nullable => 0, size => undef },
  "time_build",
  { data_type => "INTEGER", is_nullable => 0, size => undef },
  "rpm_license",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "rpm_vendor",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "rpm_group",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "rpm_buildhost",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "rpm_sourcerpm",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "rpm_header_start",
  { data_type => "INTEGER", is_nullable => 0, size => undef },
  "rpm_header_end",
  { data_type => "INTEGER", is_nullable => 0, size => undef },
  "rpm_packager",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "size_package",
  { data_type => "INTEGER", is_nullable => 0, size => undef },
  "size_installed",
  { data_type => "INTEGER", is_nullable => 0, size => undef },
  "size_archive",
  { data_type => "INTEGER", is_nullable => 0, size => undef },
  "location_href",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "location_base",
  { data_type => "TEXT", is_nullable => 0, size => undef },
  "checksum_type",
  { data_type => "TEXT", is_nullable => 0, size => undef },
);
__PACKAGE__->set_primary_key("pkgkey");


# Created by DBIx::Class::Schema::Loader v0.04005 @ 2008-10-19 14:13:35
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jzPfyo9a92RM6o6qfe1ZVg

__PACKAGE__->has_many(
    'provides',
    'YUM::RepoQuery::Schema::Primary::Version10::Provides',
    { 'foreign.pkgkey' => 'self.pkgkey' },
);

__PACKAGE__->has_many(
    'requires',
    'YUM::RepoQuery::Schema::Primary::Version10::Requires',
    { 'foreign.pkgkey' => 'self.pkgkey' },
);

__PACKAGE__->has_many(
    'obsoletes',
    'YUM::RepoQuery::Schema::Primary::Version10::Obsoletes',
    { 'foreign.pkgkey' => 'self.pkgkey' },
);

__PACKAGE__->has_many(
    'files',
    'YUM::RepoQuery::Schema::Primary::Version10::Files',
    { 'foreign.pkgkey' => 'self.pkgkey' },
);

__PACKAGE__->has_many(
    'conflicts',
    'YUM::RepoQuery::Schema::Primary::Version10::Conflicts',
    { 'foreign.pkgkey' => 'self.pkgkey' },
);

1;

__END__
=pod

=head1 NAME

YUM::RepoQuery::Schema::Primary::Version10::Packages

=head1 VERSION

version 0.002

=head1 AUTHOR

Chris Weyl <cweyl@alumni.drew.edu>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2011 by Chris Weyl.

This is free software, licensed under:

  The GNU Lesser General Public License, Version 2.1, February 1999

=cut

