# Run the calculations in the following way:

mpirun -n 2 pw.x < FeO.scf.in |tee FeO.scf.out

mpirun -n 2 pw.x < FeO.nscf.in |tee FeO.nscf.out

mpirun -n 2 projwfc.x < FeO.projwfc.in |tee FeO.projwfc.out

gnuplot plot_pdos.gp

evince FeO_PDOS.eps
