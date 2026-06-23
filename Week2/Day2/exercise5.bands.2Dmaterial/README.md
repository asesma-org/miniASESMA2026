* Underconverged for exercises on Quantum Mobile. Original inputs can be found in conv/

* Run CrBrS:
  
        mpirun -n 2 pw.x < crsbr.scf.in |tee crsbr.scf.out
        mpirun -n 2 pw.x < crsbr.bands.in |tee crsbr.bands.out
        mpirun -n 2 bands.x < crsbr.band_PP.spinup.in |tee crsbr.band_PP.spinup.out
        mpirun -n 2 bands.x < crsbr.band_PP.spindown.in |tee crsbr.band_PP.spindown.out

        gnuplot crsbr_bands.gp



