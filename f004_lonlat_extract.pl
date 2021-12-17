#!/usr/bin/perl -n

# This script extracts longitude and latitude coordinates from F005 formated
# data files.
#
# Usage: f004_format_lonlat_extract.pl INPUTFILE > OUTPUTFILE
#
# Look for the row that has the number 2 in the 10th position (9th in Perl).
if ( substr($_,9,1) == 2 ) {

# Extract the lon/lat coordinates as described in the F005 documentation.
  my $latDD = substr($_,18,2);
  my $latMM = substr($_,20,2);
  my $latSS = substr($_,22,2);
  my $latHH = substr($_,24,1);
  my $lonDD = substr($_,25,3);
  my $lonMM = substr($_,28,2);
  my $lonSS = substr($_,30,2);
  my $lonHH = substr($_,32,1);

# Converts the coordinate format from DDDMMSSH to ddd.dddd.  The first set is
# for latitude, where the seconds are divided by 60, then added to the minutes.
# For the second step we now have decimal minutes.  Dividethe decimal minutes by
# 60 and add to the degrees. The variable $latdd will now be in decimal degrees.
  my $latmm = ($latMM + ($latSS / 60));
  my $latdd = ($latDD + ($latmm / 60));

# Repeat the procedure for longitude.
  my $lonmm = ($lonMM + ($lonSS / 60));
  my $londd = ($lonDD + ($lonmm / 60));

# Assigns the appropriate sign for each coordinate based on the hemisphere
# variables (Degrees north and degrees east).
  if ( $latHH eq "N" ) {
    $lat = sprintf("%.4f",$latdd);
  }
  if ( $latHH eq "S" ) {
    $lat = sprintf("-%.4f",$latdd);
  }
  if ( $lonHH eq "E" ) {
    $lon = sprintf("%.4f",$londd);
  }
  if ( $lonHH eq "W" ) {
    $lon = sprintf("-%.4f",$londd);
  }

# Prints the coordinates.
  print "$lon $lat\n";
}
