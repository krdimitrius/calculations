# @file makefile
# @author Dmitry Krysin
# @date 2020
# @brief Makefile

# имя
NAME ?= mstat

INCLUDE ?=
SFILES ?=
FLAGS ?= 

SFILES += mstat.c

OUTFILE	= bin/$(NAME)

#------------------------------------------------------------
# Default
all: build

# Build
build: 
	gcc $(FLAGS) $(SFILES) $(INCLUDE) -o $(OUTFILE)

# Clean up
clean:
	rm -rf $(OUTFILE)
#
