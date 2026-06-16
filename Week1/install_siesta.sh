sudo apt install git
sudo apt install cmake
sudo apt install pkg-config
sudo apt install gfortran
sudo apt install libxc9
sudo apt install libxc-dev
sudo apt install libblas3
sudo apt install libblas-dev
sudo apt install liblapack3
sudo apt install liblapack-dev
sudo apt install libopenmpi-dev
sudo apt install libscalapack-openmpi2.2)
sudo apt install libscalapack-openmpi-dev
sudo apt install libreadline-dev
sudo apt install lua-readline
sudo apt install lua-readline-dev
sudo apt install libnetcdf-mpi-dev
sudo apt install libnetcdff-dev
sudo apt install libfftw3-dev
sudo apt install libfftw3-mpi-dev
sudo apt install python3.12-dev)
sudo apt install libopenblas-dev

cd 
mkdir Codes
cd Codes

git clone --recurse-submodules https://gitlab.com/siesta-project/siesta.git
cd siesta
git remote add upstream https://gitlab.com/siesta-project/siesta.git
git fetch --all
git checkout --track origin/master

mkdir tmp_build
cd tmp_build

cmake \
-DCMAKE_INSTALL_PREFIX="$HOME/hpc/siesta" \
-DCMAKE_C_COMPILER="mpicc" \
-DCMAKE_Fortran_COMPILER="mpifort" \
-DSIESTA_WITH_NETCDF="ON" \
-DSIESTA_WITH_FLOOK="False” \ 
-DSCALAPACK_LINKER_FLAG="-lscalapack-openmpi" \
-DSCALAPACK_LIBRARY="/usr/lib/x86_64-linux-gnu/libscalapack-openmpi.so.2.2" \
-DSIESTA_WITH_WANNIER90="ON" .. 2>&1 | tee ../siesta-configure.log


make -j4 2>&1 | tee ../siesta-build.log
make install 2>&1 | tee -a ../siesta-install.log

