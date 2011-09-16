
use strict;
use warnings;

use 5.006;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Query a YUM repository for package information",
  "AUTHOR" => "Chris Weyl <cweyl\@alumni.drew.edu>",
  "BUILD_REQUIRES" => {
    "Carp" => 0,
    "File::Find" => 0,
    "FindBin" => 0,
    "Scalar::Util" => 0,
    "Test::DBICSchemaLoaderDigest" => 0,
    "Test::More" => "0.94",
    "Test::UseAllModules" => 0,
    "ok" => 0,
    "perl" => "5.004"
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "YUM-RepoQuery",
  "EXE_FILES" => [],
  "LICENSE" => "lgpl",
  "NAME" => "YUM::RepoQuery",
  "PREREQ_PM" => {
    "DBIx::Class" => 0,
    "DBIx::Class::Schema" => 0,
    "English" => 0,
    "File::Find::Rule" => 0,
    "File::Slurp" => 0,
    "File::Temp" => 0,
    "File::stat" => 0,
    "IO::Uncompress::Bunzip2" => 0,
    "Moose" => 0,
    "MooseX::MarkAsMethods" => 0,
    "MooseX::Role::Parameterized" => 0,
    "MooseX::Types::Path::Class" => 0,
    "MooseX::Types::URI" => 0,
    "Path::Class" => 0,
    "URI::Fetch" => 0,
    "XML::Simple" => 0,
    "base" => 0,
    "namespace::clean" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.002",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



