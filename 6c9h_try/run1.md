AutoDock Vina v1.2.3
#################################################################
# If you used AutoDock Vina in your work, please cite:          #
#                                                               #
# J. Eberhardt, D. Santos-Martins, A. F. Tillack, and S. Forli  #
# AutoDock Vina 1.2.0: New Docking Methods, Expanded Force      #
# Field, and Python Bindings, J. Chem. Inf. Model. (2021)       #
# DOI 10.1021/acs.jcim.1c00203                                  #
#                                                               #
# O. Trott, A. J. Olson,                                        #
# AutoDock Vina: improving the speed and accuracy of docking    #
# with a new scoring function, efficient optimization and       #
# multithreading, J. Comp. Chem. (2010)                         #
# DOI 10.1002/jcc.21334                                         #
#                                                               #
# Please see https://github.com/ccsb-scripps/AutoDock-Vina for  #
# more information.                                             #
#################################################################

Scoring function : vina
Rigid receptor: b_receptor.pdbqt
Ligand: amp_ideal_ligand.pdbqt
Grid center: X 0 Y 0 Z 0
Grid size  : X 20 Y 20 Z 20
Grid space : 0.375
Exhaustiveness: 16
CPU: 0
Verbosity: 1

Computing Vina grid ... done.
Performing docking (random seed: -1009571615) ... 
0%   10   20   30   40   50   60   70   80   90   100%
|----|----|----|----|----|----|----|----|----|----|
***************************************************

mode |   affinity | dist from best mode
     | (kcal/mol) | rmsd l.b.| rmsd u.b.
-----+------------+----------+----------
   1    -7.093e-06          0          0
   2    -2.596e-06      5.129      6.982
   3            0      4.358      6.097
   4            0      6.716      7.717
   5     0.000137      5.214      6.359
   6    0.0001868       8.49      10.48
   7    0.0001991      2.558      3.596
   8    0.0001991       3.54      5.345
   9     0.001124      9.252      11.53
