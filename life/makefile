# @file makefile
# @brief Makefile

INCLUDE ?=
SFILES	?=
FLAGS ?= 

OUTFILE = bin/life

SFILES	+= life.c

#------------------------------------------------------------
# Default
all: build

# Build
build: 
	g++ $(FLAGS) $(SFILES) $(INCLUDE) -o $(OUTFILE)
#
