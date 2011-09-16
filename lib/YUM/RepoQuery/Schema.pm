#
# This file is part of YUM-RepoQuery
#
# This software is Copyright (c) 2011 by Chris Weyl.
#
# This is free software, licensed under:
#
#   The GNU Lesser General Public License, Version 2.1, February 1999
#
package YUM::RepoQuery::Schema;
{
  $YUM::RepoQuery::Schema::VERSION = '0.002';
}

# ABSTRACT: dinky little class that we can use for typeconstraints

1;



=pod

=head1 NAME

YUM::RepoQuery::Schema - dinky little class that we can use for typeconstraints

=head1 VERSION

version 0.002

=head1 DESCRIPTION

This is a little base class that all our versioned Primary schemas can descend
from.  You shouldn't ever use this, as it doesn't actually do anything.

=head1 SEE ALSO

L<YUM::RepoQuery>

=head1 AUTHOR

Chris Weyl <cweyl@alumni.drew.edu>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2011 by Chris Weyl.

This is free software, licensed under:

  The GNU Lesser General Public License, Version 2.1, February 1999

=cut


__END__

