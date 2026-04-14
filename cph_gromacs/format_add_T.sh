#!bin/bash

sed 's/ASP /ASPT/g' step5_input.pdb > input.pdb
sed 's/GLU /GLUT/g' input.pdb > input2.pdb
#sed 's/ARG /ARGT/g' input2.pdb > input3.pdb
sed 's/HSP /HSPT/g' input2.pdb > input3.pdb
#sed 's/LYS /LYST/g' input4.pdb > input5.pdb
sed 's/TIP3/SOL /g' input3.pdb > solvated.pdb
sed 's/HT1/H1 /g' solvated.pdb > solvated1.pdb
sed 's/HT2/H2 /g' solvated1.pdb > solvated2.pdb
sed 's/HT3/H3 /g' solvated2.pdb > solvated3.pdb
sed 's/H1  SOL/HW1 SOL/g' solvated3.pdb > solvated4.pdb
sed 's/H2  SOL/HW2 SOL/g' solvated4.pdb > solvated5.pdb
sed 's/OH2 SOL/OW  SOL/g' solvated5.pdb > solvated6.pdb

mv solvated6.pdb new_solvated6.pdb
rm input.pdb
rm input*.pdb
rm solvated.pdb
rm solvated*.pdb

mv new_solvated6.pdb solvated.pdb
