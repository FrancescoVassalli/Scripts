#!/bin/bash
LOCATION="/direct/sphenix+data+data03/phnxreco/sphenix/t1044/production/production_0322/beam_0000"
EXTENSION="-0000_DSTReader.root "
ZIPCALL=$LOCATION$1$EXTENSION
shift
while [ $# -gt 0 ]; do
  TZIPCALL=$LOCATION$1$EXTENSION
  ZIPCALL=$TZIPCALL$ZIPCALL
  shift
done
zip /sphenix/user/vassalli/PbGlData/beamDST.zip $ZIPCALL
