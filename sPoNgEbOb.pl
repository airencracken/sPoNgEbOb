#!/usr/bin/env perl

use strict;
use warnings;

my $string = join "", map { rand(100) < 50 ? "\u$_":"\l$_" } split "", (join "", <STDIN>);

print `toilet -f wideterm -w 1024 "$string"`;

