# USER_SETTINGS_FILE
# ##################
#
# This is an example settings file which can be used instead of modifying
# the src/Makefile directly
#
# Copy this file to settings.mk in the top level goma directory
#
# The values defined in this file (both commented and uncommented) will
# override the values in the src/Makefile

# _MACH is used if libraries were compiled with machine specific suffixes
# (libblas_linux)

# _MACH = linux

# Useful for standard goma libary install location

ARCH = rhel7_ompi

# Goma library path, by default we assume all major non-standard libraries are under
# the goma library path

GOMA_LIBS = /home/ccparri/gmlibs

# Compiler Settings
# =================

# MPI install location, used for include, lib, and bin directories

MPI_TOP = /opt/openmpi/4.0/gnu
GOMA_MPI_LIB = -L$(MPI_TOP)/lib  -lmpi  -lmpi_mpifh

CC = $(MPI_TOP)/bin/mpicc
CXX = $(MPI_TOP)/bin/mpicxx
FC = $(MPI_TOP)/bin/mpifort

# GCC_TOP is the corresponding location of the gcc compilers and libs that are
# used by the MPI compilers
GCC_TOP = /usr

# DEBUG_FLAGS overrides CCFLAGS when building `debug` target
# DEBUG_FLAGS	= -g -gdwarf-2

# All compiler options
# CCFLAGS	= -O2

# C/C++ warning flags
# C_WARN_FLAGS	= -Wall

# C++ standard flag (required for stratimikos support)
CXXSTD = -std=gnu++11

# Fortran warning flags
# F_WARN_FLAGS	=

# Trilinos install directory (include, lib)

TRILINOS_TOP = $(GOMA_LIBS)/trilinos-13.0.0

# Install location
# will install files in $PREFIX/include/goma, $PREFIX/lib, $PREFIX/bin

PREFIX = /home/ccparri/goma/build

# Below are the default defines, change defines as necessary

# DEFINES =  -Dlinux \
#            -DCOMPILER_64BIT \
#            -DENABLE_AMESOS \
#            -DTRILINOS \
#            -DCHECK_FINITE\
#            -DNO_CHEBYSHEV_PLEASE \
#            -DMDE=27 \
#            -DMAX_PROB_VAR=15 \
#            -DMAX_EXTERNAL_FIELD=4 \
#            -DMAX_CONC=4 \
#            -DCOUPLED_FILL \
#            -DPARALLEL \
#            -DEIGEN_SERIAL 

# If you want stratimikos support, use the above DEFINES and add the following
#	     -DHAVE_STRATIMIKOS

# Enable trapping on floating point exception (useful for debugging NaN's)
#	     -DFP_EXCEPT

# To enable .log files with some extra information
#	     -DENABLE_LOGGING

# TOOLING used for install, cleaning, and library creation
# install
# INSTALL	= cp
# INSTFLAGS	= 

# clean
# RM		= rm -f

# archiver
# AR		= ar
# ARFLAGS	= srv
# RANLIB	= touch
