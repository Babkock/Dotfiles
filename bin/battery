#!/usr/bin/perl
my $output = qx(acpi);

my @fields = split /\,/, $output;
my $out = substr $fields[1], 1, 3;
my $perc = substr $out, 0, 2;

if ($perc <= 10) {
#	qx(notify-send --expire-time=5000 --urgency=critical "<b>Low Battery</b><br /><br />Please charge your laptop now.")
}

print "$out\n";
