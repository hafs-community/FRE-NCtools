# **********************************************************************
# Setup and Load the Modules
# **********************************************************************    
source $MODULESHOME/init/sh
module use -a /ncrc/home2/fms/local/modulefiles
module rm PrgEnv-pgi PrgEnv-pathscale
module load PrgEnv-intel/6.0.3
module swap intel intel/5.2.820
module load cray-netcdf/4.4.0
module load cray-hdf5/1.8.16

# **********************************************************************
# Set environment variablesSetup and Load the Modules
# **********************************************************************    
FRE_SYSTEM_SITE=ncrc4
MPICH_UNEX_BUFFER_SIZE=256m
MPICH_MAX_SHORT_MSG_SIZE=64000
MPICH_PTL_UNEX_EVENTS=160k
KMP_STACKSIZE=2g
F_UFMTENDIAN=big
export FRE_SYSTEM_SITE
export MPICH_UNEX_BUFFER_SIZE
export MPICH_MAX_SHORT_MSG_SIZE
export MPICH_PTL_UNEX_EVENTS
export KMP_STACKSIZE
export F_UFMTENDIAN

# **********************************************************************
# Aliases
# **********************************************************************    
alias make="make HDF5_HOME=$HDF5_DIR NETCDF_HOME=$NETCDF_DIR NC_BLKSZ=64K SITE=gaea -f fre-nctools.mk"

# **********************************************************************
# Other build configuration settings
# **********************************************************************    
