#! /bin/bash

cd $DRONE_STACK
source setup.sh
roslaunch driverPixhawkROSModule driverPixhawkROSModuleSim.launch --wait drone_id_int:="5" drone_id_namespace:="drone5"