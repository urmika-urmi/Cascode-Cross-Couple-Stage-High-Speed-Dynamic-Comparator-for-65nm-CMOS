#!/bin/bash

echo "Running simulation using Ngspice..."
ngspice -b -o sim_output.log comparator.sp

echo "Simulation complete. Log saved to sim_output.log"
