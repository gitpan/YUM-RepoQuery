package YUM::RepoQuery::Schema::Primary::Version10::DbInfo;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("db_info");
__PACKAGE__->add_columns(
  "dbversion",
  { data_type => "INTEGER", is_nullable => 0, size => undef },
  "checksum",
  { data_type => "TEXT", is_nullable => 0, size => undef },
);


# Created by DBIx::Class::Schema::Loader v0.04005 @ 2008-10-19 14:13:35
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:djBnlluSqExHn2w2Y+BWCQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;

__END__
=pod

=head1 NAME

YUM::RepoQuery::Schema::Primary::Version10::DbInfo

=head1 VERSION

version 0.002

=head1 AUTHOR

Chris Weyl <cweyl@alumni.drew.edu>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2011 by Chris Weyl.

This is free software, licensed under:

  The GNU Lesser General Public License, Version 2.1, February 1999

=cut

