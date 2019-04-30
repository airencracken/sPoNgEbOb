#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';

my $string = join "", @ARGV;
my $normalized;

my $rand = int(rand(10));

if ($rand % 2 == 0) {
	$normalized = lc $string;
} else {
	$normalized = uc $string;
}

my @stringarray = split "", $normalized;
my @mocking;

for (my $i = 0; $i <= (length($normalized) - 1); $i++) {
	if ($i % 2 == 0) {
		push @mocking, $stringarray[$i];
		next;
	}
	if ($stringarray[$i] =~ m/[A-Z]/) {
		my $new;
		$new = lc $stringarray[$i];
		push @mocking, $new;
	} else {
		my $new;
		$new = uc $stringarray[$i];
		push @mocking, $new;
	}
}

say join "", @mocking;
