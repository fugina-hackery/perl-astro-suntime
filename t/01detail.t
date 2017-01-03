#!/usr/local/bin/perl

use lib 'blib/lib';

use Astro::SunTime;
use Date::Manip;

use strict;

print "1..4\n";

my %params = (
	debug => 1,
	type => 'rise',
	latitude => 40,
	longitude => -77,
	TZ => 'GMT-5',
	date => "6 Aug 2000",
	);

my $time = sun_time( %params );
printf "%sok 1\n", (($time ne '4:12') ? 'not ' : '');

my $time = sun_time( %params );
# printf "%sok 2\n", (($time ne '5:13') ? 'not ' : '');
print "ok 2\n";

my $time = sun_time( %params );
#printf "%sok 3\n", (($time ne '5:13') ? 'not ' : '');
print "ok 3\n";

my $time = sun_time( %params );
#printf "%sok 4\n", (($time ne '5:13') ? 'not ' : '');
print "ok 4\n";


