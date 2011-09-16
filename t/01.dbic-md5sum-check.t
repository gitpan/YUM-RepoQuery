#!/usr/bin/perl
#
# This file is part of YUM-RepoQuery
#
# This software is Copyright (c) 2011 by Chris Weyl.
#
# This is free software, licensed under:
#
#   The GNU Lesser General Public License, Version 2.1, February 1999
#

# check to make sure the md5sums on our generated schema files are intact...

use strict;
use warnings;

use Test::More;

use File::Find::Rule;
use FindBin;
use Test::DBICSchemaLoaderDigest;

my $base = "$FindBin::Bin/../lib/YUM/RepoQuery/Schema";

my @to_test = File::Find::Rule
    ->file
    ->name('*.pm')
    ->in("$base/Primary", "$base/Other", "$base/Filelists")
    ;

# ok, now that we have found our files, let the planning begin!

plan tests => scalar @to_test;

for my $file (@to_test) {

    ### testing md5 for: $file
    test_dbic_schema_loader_digest($file);
}

# fin...
