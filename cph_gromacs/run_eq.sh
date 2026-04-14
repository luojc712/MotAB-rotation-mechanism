#!/bin/bash

gmx mdrun -v -deffnm NVT -c NVT.pdb -npme 0

gmx grompp -f NPT.mdp -c NVT.pdb -p topol.top -n index.ndx -o NPT.tpr
gmx mdrun -v -deffnm NPT -c NPT.pdb -npme 0

gmx trjconv -f NPT.pdb -o start.pdb -s NPT.tpr -pbc mol
