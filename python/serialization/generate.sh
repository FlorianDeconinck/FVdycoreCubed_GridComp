#!/bin/bash

ml SMTStack/2024.03.00

FV_COMP=/home/fgdeconi/work/git/fp/geos/src/Components/@GEOSgcm_GridComp/GEOSagcm_GridComp/GEOSsuperdyn_GridComp/@FVdycoreCubed_GridComp/

FILE=$FV_COMP/FV_StateMod.F90
pp_ser.py $FILE.SER > $FILE
tail -n +2 $FILE > $FILE.swp && mv $FILE.swp $FILE
