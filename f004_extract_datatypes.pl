#!/usr/bin/perl -n


if ( substr($_,9,1) == 1 ) {


  my $NODC_FILE_NUMBER = substr($_,0,3);
  my $NODC_TRACK_NUMBER = substr($_,3,6);
  my $RECORD_NUMBER = substr($_,9,1);
  my $VESSEL = substr($_,10,11);
  my $CRUISE = substr($_,21,6);
  my $CRUISE_DATES = substr($_,27,21);
  my $SENIOR_SCIENTIST = substr($_,48,19);
  my $INVESTIGATOR = substr($_,67,17);
  my $BLANKS = substr($_,84,16);
  
 
  if ( $NODC_FILE_NUMBER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $NODC_TRACK_NUMBER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $RECORD_NUMBER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $VESSEL =~ /^[0-9,.E]+$/) {
   print "VESSEL\n";
      }
  if ( $CRUISE =~ /^[0-9,.E]+$/) {
    print "no datatype\n";
      }
  if ( $CRUISE_DATES =~ /^[0-9,.E]+$/) {
   print "CRUISE_DATE\n";
      }
  if ( $SENIOR_SCIENTIST =~ /^[0-9,.E]+$/) {
   print "SENIOR_SCIENTIS\n";
      }
  if ( $INVESTIGATOR =~ /^[0-9,.E]+$/) {
   print "INVESTIGATOR\n";
      }
  if ( $BLANKS =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
      }

if ( substr($_,9,1) == 2 ) {

  
  my $NODC_FILE_NUMBER = substr($_,0,3);
  my $NODC_TRACK_NUMBER = substr($_,3,6);
  my $RECORD_NUMBER = substr($_,9,1);
  my $SEQUENCE = substr($_,10,3);
  my $STATION = substr($_,13,5);
  my $LATITUDE = substr($_,18,6);
  my $LATITUDE_HEMISPHERE = substr($_,24,1);
  my $LONGITUDE = substr($_,25,7);
  my $LONGITUDE_HEMISPHERE = substr($_,32,1);
  my $TIME_GMT = substr($_,33,3);
  my $DATE = substr($_,36,10);
  my $BOTTOM = substr($_,46,5);
  my $NAVIGATION = substr($_,51,2);
  my $METHOD = substr($_,53,1);
  my $CABIN_TEMPERATURE = substr($_,54,3);
  my $BOX_TEMPERATURE = substr($_,57,2);
  my $SALINITY_METHOD = substr($_,59,1);
  my $STATION_IDENTIFIER = substr($_,60,10);
  my $MAXIMUM_DEPTH = substr($_,70,5);
  my $BOTTOM_TYPE = substr($_,75,1);
  my $BLANKS = substr($_,76,24);

  
  if ( $NODC_FILE_NUMBER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $NODC_TRACK_NUMBER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $RECORD_NUMBER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $SEQUENCE =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $STATION =~ /^[0-9,.E]+$/) {
   print "STATION\n";
      }
  if ( $LATITUDE =~ /^[0-9,.E]+$/) {
   print "LATITUDE\n";
      }
  if ( $LATITUDE_HEMISPHERE == "N") {
     print "data in Northern Hemisphere\n";
      }
   elsif ( $LATITUDE_HEMISPHERE == "S") {
     print "data in Northern Hemisphere\n";
      }
    else 		 {
     print "o henispere in column 25, data not consistent\n";
      }
  if ( $LONGITUDE =~ /^[0-9,.E]+$/) {
   print "LONGITUDE\n";
      }
  if ( $LONGITUDE_HEMISPHERE == "E") {
   print "data in the Eastern Hemisphere\n";
      }
  elsif ( $LONGITUDE_HEMISPHERE == "W") {
   print "data in the Western Hemisphere\n";
      }
  else 		{
    print "no henispere in column 33, data not consistent\n";
      }
  if ( $TIME_GMT =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $DATE =~ /^[0-9,.E]+$/) {
   print "DATE\n";
      }
  if ( $BOTTOM =~ /^[0-9,.E]+$/) {
   print "BOTTOM\n";
      }
  if ( $NAVIGATION =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $METHOD =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $CABIN_TEMPERATURE =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $BOX_TEMPERATURE =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $SALINITY_METHOD =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $STATION_IDENTIFIER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $MAXIMUM_DEPTH =~ /^[0-9,.E]+$/) {
   print "MAXIMUM_DEPTH\n";
      }
  if ( $BOTTOM_TYPE =~ /^[0-9,.E]+$/) {
   print "BOTTOM_TYPE\n";
      }
  if ( $BLANKS =~ /^[0-9,.E]+$/) {
  
 print "no datatype\n";
      }
    }

if ( substr($_,9,1) == 3 ) {

   
  my $NODC_FILE_NUMBER = substr($_,0,3);
  my $NODC_TRACK_NUMBER = substr($_,3,6);
  my $RECORD_NUMBER = substr($_,9,1);
  my $SEQUENCE = substr($_,10,3);
  my $STATION = substr($_,13,5);
  my $BAROMETER = substr($_,18,3);
  my $DRY_BULB_TEMPERATURE = substr($_,21,4);
  my $WET_BULB_TEMPERATURE = substr($_,25,4);
  my $WIND_DIRECTION = substr($_,29,2);
  my $WIND_SPEED = substr($_,31,2);
  my $SEA_DIRECTION = substr($_,33,2);
  my $SEA_HEIGHT = substr($_,35,1);
  my $SWELL_DIRECTION = substr($_,36,2);
  my $SWELL_HEIGHT = substr($_,38,1);
  my $WEATHER = substr($_,39,1);
  my $CLOUD_TYPE = substr($_,40,1);
  my $CLOUD_COVER = substr($_,41,1);
  my $VISIBILITY = substr($_,42,1);
  my $TRANSPARENCY = substr($_,43,4);
  my $TURBIDITY = substr($_,47,1);
  my $WATER_COLOR = substr($_,48,2);
  my $BLANKS = substr($_,50,50);

  
  if ( $NODC_FILE_NUMBER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $NODC_TRACK_NUMBER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $RECORD_NUMBER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $SEQUENCE =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $STATION =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $BAROMETER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $DRY_BULB_TEMPERATURE =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $WET_BULB_TEMPERATURE =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $WIND_DIRECTION =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $WIND_SPEED =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $SEA_DIRECTION =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $SEA_HEIGHT =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $SWELL_DIRECTION =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $SWELL_HEIGHT =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $WEATHER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $CLOUD_TYPE =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $CLOUD_COVER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $VISIBILITY =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $TRANSPARENCY =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $TURBIDITY =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $WATER_COLOR =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $BLANKS =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
      }

if ( substr($_,9,1) == 4 ) {

 
  my $NODC_FILE_NUMBER = substr($_,0,3);
  my $NODC_TRACK_NUMBER = substr($_,3,6);
  my $RECORD_NUMBER = substr($_,9,1);
  my $SEQUENCE = substr($_,10,3);
  my $STATION = substr($_,13,5);
  my $DEPTH = substr($_,18,4);
  my $TEMPERATURE = substr($_,22,5);
  my $SALINITY = substr($_,27,5);
  my $SIGMA_T = substr($_,32,4);
  my $TRANSMISSSIVITY = substr($_,36,3);
  my $PH = substr($_,39,3);
  my $EH = substr($_,42,4);
  my $OXYGEN = substr($_,46,4);
  my $AMMONIA = substr($_,50,3);
  my $NITRITE = substr($_,53,3);
  my $NITRATE = substr($_,56,4);
  my $SILICATE = substr($_,60,4);
  my $PHOSPHATE = substr($_,64,3);
  my $SOLIDS = substr($_,67,4);
  my $TURBIDITY = substr($_,71,4);
  my $CHLOROPHYLL = substr($_,75,5);
  my $LIGHT_PENETRATION = substr($_,80,3);
  my $PRODUCTIVITY = substr($_,83,3);
  my $TOTAL_NITROGEN = substr($_,86,3);
  my $TOTAL_PHOSPHATE = substr($_,89,4);
  my $TOTAL_FILTER_PASSING_PHOSPHATE = substr($_,93,4);
  my $TITRATION_ALKALINITY = substr($_,97,3);

 
 
  if ( $NODC_FILE_NUMBER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $NODC_TRACK_NUMBER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $RECORD_NUMBER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $SEQUENCE =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $STATION =~ /^[0-9,.E]+$/) {
   print "STATION\n";
      }
  if ( $DEPTH =~ /^[0-9,.E]+$/) {
   print "DEPTH\n";
      }
  if ( $TEMPERATURE =~ /^[0-9,.E]+$/) {
   print "WATER TEMPERATURE\n";
      }
  if ( $SALINITY =~ /^[0-9,.E]+$/) {
   print "SALINITY\n";
      }
  if ( $SIGMA_T =~ /^[0-9,.E]+$/) {
   print "SIGMA_T\n";
      }
  if ( $TRANSMISSSIVITY =~ /^[0-9,.E]+$/) {
   print "TRANSMISSSIVITY\n";
      }
  if ( $PH =~ /^[0-9,.E]+$/) {
   print "PH\n";
      }
  if ( $EH =~ /^[0-9,.E]+$/) {
   print "EH\n";
      }
  if ( $OXYGEN =~ /^[0-9,.E]+$/) {
   print "OXYGEN\n";
      }
  if ( $AMMONIA =~ /^[0-9,.E]+$/) {
   print "AMMONIA\n";
      }
  if ( $NITRITE =~ /^[0-9,.E]+$/) {
   print "NITRITE\n";
      }
  if ( $NITRATE =~ /^[0-9,.E]+$/) {
   print "NITRATE\n";
      }
  if ( $SILICATE =~ /^[0-9,.E]+$/) {
   print "SILICATE\n";
      }
  if ( $PHOSPHATE =~ /^[0-9,.E]+$/) {
  print "PHOSPHATE\n";
      }  
  if ( $SOLIDS =~ /^[0-9,.E]+$/) {
    print "SOLIDS\n";
      }
  if ( $TURBIDITY =~ /^[0-9,.E]+$/) {
    print "TURBIDITY\n";
      }
  if ( $CHLOROPHYLL =~ /^[0-9,.E]+$/) {
    print "CHLOROPHYLL\n";
      }
  if ( $LIGHT_PENETRATION =~ /^[0-9,.E]+$/) {
    print "LIGHT_PENETRATION\n";
      }
  if ( $PRODUCTIVITY =~ /^[0-9,.E]+$/) {
    print "PRODUCTIVITY\n";
      }
  if ( $TOTAL_NITROGEN =~ /^[0-9,.E]+$/) {
    print "TOTAL_NITROGEN\n";
      }
  if ( $TOTAL_NITROGEN =~ /^[0-9,.E]+$/) {
    print "TOTAL_NITROGEN\n";
      }
  if ( $TOTAL_FILTER_PASSING_PHOSPHATE =~ /^[0-9,.E]+$/) {
    print "TOTAL_FILTER_PASSING_PHOSPHAT\n";
      }
  if ( $TITRATION_ALKALINITY =~ /^[0-9,.E]+$/) {
   print "TITRATION_ALKALINITY\n";
      }
      }

if ( substr($_,9,1) == 4 ) {

  
  my $NODC_FILE_NUMBER = substr($_,0,3);
  my $NODC_TRACK_NUMBER = substr($_,3,6);
  my $RECORD_NUMBER = substr($_,9,1);
  my $SEQUENCE = substr($_,10,3);
  my $STATION = substr($_,13,5);
  my $DEPTH = substr($_,18,4);
  my $TEMPERATURE = substr($_,22,5);
  my $SALINITY = substr($_,27,5);
  my $SIGMA_T = substr($_,32,4);
  my $EAST_WEST_CURRENT_COMPONENT_U = substr($_,36,5);
  my $NORTH_SOUTH_CURRENT_COMPONENT_V = substr($_,41,5);
  my $TRANSMISSIVITY = substr($_,46,3);
  my $PH = substr($_,49,3);
  my $OXYGEN = substr($_,52,4);
  my $AMMONIA = substr($_,56,3);
  my $NITRITE = substr($_,59,3);
  my $NITRATE = substr($_,62,5);
  my $SILICATE = substr($_,67,4);
  my $PHOSPHATE = substr($_,71,3);
  my $CHLOROPHYLL = substr($_,74,5);
  my $BLANK = substr($_,79,21);

  
  if ( $NODC_FILE_NUMBER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $NODC_TRACK_NUMBER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $RECORD_NUMBER =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $SEQUENCE =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
  if ( $STATION =~ /^[0-9,.E]+$/) {
   print "STATION\n";
      }
  if ( $DEPTH =~ /^[0-9,.E]+$/) {
   print "DEPTH\n";
      }
  if ( $TEMPERATURE =~ /^[0-9,.E]+$/) {
   print "WATER TEMPERATURE\n";
      }
  if ( $SALINITY =~ /^[0-9,.E]+$/) {
   print "SALINITY\n";
      }
  if ( $SIGMA_T =~ /^[0-9,.E]+$/) {
   print "SIGMA_T\n";
      }
  if ( $EAST_WEST_CURRENT_COMPONENT_U =~ /^[0-9,.E]+$/) {
   print "EAST_WEST_CURRENT_COMPONENT_U\n";
      }
  if ( $NORTH_SOUTH_CURRENT_COMPONENT_V =~ /^[0-9,.E]+$/) {
   print "NORTH_SOUTH_CURRENT_COMPONENT_V\n";
      }
  if ( $TRANSMISSIVITY =~ /^[0-9,.E]+$/) {
   print "TRANSMISSIVITY\n";
      }
  if ( $PH =~ /^[0-9,.E]+$/) {
   print "PH\n";
      }
  if ( $OXYGEN =~ /^[0-9,.E]+$/) {
   print "OXYGEN\n";
      }  
  if ( $AMMONIA =~ /^[0-9,.E]+$/) {
   print "AMMONIA\n";
      }
  if ( $NITRITE =~ /^[0-9,.E]+$/) {
   print "NITRITE\n";
      }
  if ( $NITRATE =~ /^[0-9,.E]+$/) {
   print "NITRATE\n";
      }
  if ( $SILICATE =~ /^[0-9,.E]+$/) {
   print "SILICATE\n";
      }
  if ( $PHOSPHATE =~ /^[0-9,.E]+$/) {
   print "PHOSPHATE\n";
      }
  if ( $CHLOROPHYLL =~ /^[0-9,.E]+$/) {
   print "CHLOROPHYLL\n";
      }
  if ( $BLANK =~ /^[0-9,.E]+$/) {
   print "no datatype\n";
      }
    }


