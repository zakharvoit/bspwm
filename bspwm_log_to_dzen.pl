#!/usr/bin/env perl

use 5.011;
use strict;
use warnings;

my $counter;
sub get_desktop {
    my ($state, $workspace) = @_;
    my $color = "^bg(#1B1D1E)";
    if ($state eq uc $state) {
	$color .= "^fg(#FBCC74)";
    } else {
	$color .= "^fg(white)";
    }
    $counter++;
    "${color}[$counter:$workspace]^fg()^bg()"
}

$| = 1;

while (<>) {
    $counter = 0;
    s/([oOfF])([^:]+):/get_desktop $1, $2/ge;
    s/WMVGA1://g;
    s/LT/ ^fg(#FCBD65)^bg(#3B3D3E)Tiling^fg()^bg()/g;
    s/LM/ ^fg(#FCBD65)^bg(#3B3D3E)Manual^fg()^bg()/g;
    print;
}
