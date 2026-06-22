# PURPOSE OF THE EXERCISE: 
## How to calculate the phonon dispersion of silicon
----------------------------------------------------

### Steps to perform:

1. Run the SCF ground-state calculation

        mpirun -np 2 pw.x < Si.scf.in |tee Si.scf.out

2. Run the phonon calculation on a uniform grid of q-points

        mpirun -np 2 ph.x < Si.ph.in |tee Si.ph.out

3. Fourier transform the Interatomic Force Constants from a uniform grid of q-points to real space: C(q) => C(R)

        mpirun -np 2 q2r.x < Si.q2r.in |tee Si.q2r.out

4. Calculate frequencies omega(q') at generic q' points using Interatomic Force Constants C(R)

        mpirun -np 2 matdyn.x < Si.matdyn.in |tee Si.matdyn.out

5. Plot the phonon dispersion of silicon 

        plotband.x < plotband.Si.in |tee plotband.Si.out
        gnuplot plot_dispersion.gp
        
6. Look at your result and try to understand what is the difference with respet to the example3.phonon.dispersion.Si
