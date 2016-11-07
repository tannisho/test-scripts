#!/usr/bin/perl

use JSON 'decode_json';

my $id="5368361";		# City ID for Los angeles
my $units="imperial"; 		# temp units: (imperial=F,metric=C)
my $appid="replace-with-appid"; # APPID

$ff=`curl -s "http://api.openweathermap.org/data/2.5/weather?id=$id&units=imperial&APPID=$appid"`;

my $jout = decode_json($ff);
#
print"City = ". $jout->{'name'}. "\n";
print"Temp = ". $jout->{'main'}{'temp'}. "\n";
print"Humidity = ". $jout->{'main'}{'humidity'}. "\n";
print"Pressure = ". $jout->{'main'}{'pressure'}. "\n";
print"Visibility = ". $jout->{'visibility'}. "\n";
print"Wind Speed = ". $jout->{'wind'}{'speed'}. "\n";
print"Wind Degree = ". $jout->{'wind'}{'deg'}. "\n";
#
