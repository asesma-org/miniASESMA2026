# PURPOSE OF THE EXERCISE:
## How to calculate the phonon frequencies of the polar semiconductor AlAs at the Gamma point.
------------------------------------------------------------------------

### Steps to perform:

1. Run the SCF ground-state calculation

        mpirun -np 2 pw.x < AlAs.scf.in |tee AlAs.scf.out

2. Run the phonon calculation at Gamma

        mpirun -np 2 ph.x < AlAs.ph.in |tee AlAs.ph.out

3. Impose the acoustic sum rule at the Gamma point and add the non-analytic LO-TO splitting

        mpirun -np 2 dynmat.x < AlAs.dynmat.in |tee AlAs.dynmat.out
