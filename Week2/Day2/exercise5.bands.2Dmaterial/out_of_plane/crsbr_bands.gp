set grid xtics lw 3 lt 1 lc "black"
set border lw 3

set xtics ("{/Symbol G}" 0.0000, "X" 0.5000, "S" 0.8737, "Y" 1.3737, "{/Symbol G}" 1.7474, "A" 1.82)
set xtics font "Helvetica,24"

set parametric
set trange [0:1.8238]
set yrange [-6:6]

Ef = -1.7978

p 'crsbr.spinup.band_dat.gnu' u 1:($2-Ef) w l lw 3 lc 'black' t 'spin up', \
  'crsbr.spindown.band_dat.gnu' u 1:($2-Ef) w l lw 3 lc 'red' t 'spin down', \
  t,0.0 w l lt 0 lw 4 t "Fermi Energy"

pause -1
