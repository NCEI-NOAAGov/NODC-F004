NODC-F004
=========

Prior to archiving data as received, NODC would take data and put it into a standard format. The F004 format was for Physics and Chemical data.

NCEI still provides the format to users:https://www.ncei.noaa.gov/data/oceans/nodc/formats/F004_Codes.txt

NCEI also provides the data to users, example:
https://www.ncei.noaa.gov/metadata/geoportal/rest/metadata/item/gov.noaa.nodc%3A7200385/html

Perl scripts have been created and modified over the years to extract specific data from the character-based data files.

Example of the F004 data
------------------------

    004TR14591BOWEN    05/07/1952-07/28/1952              U.S.C.G.S.
    004TR145920010001  385542N0745118W13105/07/195200128
    004TR145930010001  1320128 3205 2 1 0012
    004TR145940010001  000 1183 2926 2220
    004TR145940020001  002 1183 2928 2221
    004TR145940030001  004 1183 2932 2224
    004TR145940040001  006 1183 2938 2229
    004TR145940050001  007 1172 2956 2245
    004TR145940060001  009 1150 2998 2281
    004TR145940070001  011 1128 3016 2299
    004TR145940080001  013 1122 3016 2300
    004TR145920010002  385324N0745424W13805/07/195200104
    004TR145930010002  1390144 3205 2 2 0104
    004TR145940010002  000 1200 2916 2144
    004TR145940020002  002 1200 2916 2144
    004TR145940030002  004 1200 2917 2145
    004TR145940040002  006 1200 2917 2145
    004TR145940050002  007 1200 2916 2144
    004TR145940060002  009 1200 2917 2145
    004TR145940070002  011 1200 2920 2150
    004TR145920010003  385012N0745736W14405/07/195200101
    004TR145930010003  1390150 3205 2 2 0009
    004TR145940010003  000 1211 2898 2193
    004TR145940020003  002 1211 2898 2193
    004TR145940030003  004 1211 2898 2193
    004TR145940040003  006 1211 2899 2194
    004TR145940050003  007 1211 2899 2194
    004TR145940060003  009 1211 2899 2194
    004TR145940070003  011 1211 2899 2194


Example code
------------

    #!/usr/bin/perl -n
    if ( substr($_,9,1) == 1 ) {
    my $NODC_FILE_NUMBER = substr($_,0,3); my $NODC_TRACK_NUMBER = substr($_,3,6); my $RECORD_NUMBER = substr($_,9,1);
    my $VESSEL = substr($_,10,11);
    my $CRUISE = substr($_,21,6);
    my $CRUISE_DATES = substr($_,27,21);
    my $SENIOR_SCIENTIST = substr($_,48,19); my $INVESTIGATOR = substr($_,67,17);
    my $BLANKS = substr($_,84,16);
    if ( $NODC_FILE_NUMBER =~ /^[0-9,.E]+$/) { print "no datatype\n";
    }
    if ( $NODC_TRACK_NUMBER =~ /^[0-9,.E]+$/) {
    print "no datatype\n"; }
    if ( $RECORD_NUMBER =~ /^[0-9,.E]+$/) { print "no datatype\n";
    }
    if ( $VESSEL =~ /^[0-9,.E]+$/) {
    print "VESSEL\n"; }
    if ( $CRUISE =~ /^[0-9,.E]+$/) { print "no datatype\n";
    }
    if ( $CRUISE_DATES =~ /^[0-9,.E]+$/) {
    print "CRUISE_DATE\n"; }
    if ( $SENIOR_SCIENTIST =~ /^[0-9,.E]+$/) { print "SENIOR_SCIENTIS\n";
    }
    if ( $INVESTIGATOR =~ /^[0-9,.E]+$/) {
    print "INVESTIGATOR\n"; }
    if ( $BLANKS =~ /^[0-9,.E]+$/) { print "no datatype\n";
    } }
