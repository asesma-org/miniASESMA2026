# PURPOSE OF THE EXERCISE:
## How to calculate the phonon dispersion of the polar semiconductor AlAs
------------------------------------------------------------------------

### Steps to perform:

N.B. Open all the input files and try to understand them. Then, fill the parts that are left empty before running them.

1. Run the SCF ground-state calculation

        mpirun -np 2 pw.x < AlAs.scf.in |tee AlAs.scf.out

2. Run the phonon calculation on a uniform grid of q-points

        mpirun -np 2 ph.x < AlAs.ph.in |tee AlAs.ph.out

3. Fourier transform the Interatomic Force Constants from a uniform grid of q-points to real space: C(q) => C(R)

        mpirun -np 2 q2r.x < AlAs.q2r.in |tee AlAs.q2r.out

4. Calculate frequencies omega(q') at generic q' points using Interatomic Force Constants C(R)

        mpirun -np 2 matdyn.x < AlAs.matdyn.in |tee AlAs.matdyn.out

5. Plot the phonon dispersion 

        plotband.x < plotband.AlAs.in |tee plotband.AlAs.out
        gnuplot plot_dispersion.gp

6. Extra: can you spot the negative phonons? Why is that?
   Now run AlAs from the top but change the **k-mesh** from 2 2 2 to 4 4 4 in AlAs.scf.in.
   What happens to the phonos dispersion?
