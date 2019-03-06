LULESH per-timestep plotting with VisIt
---------------------------------------

*This repository is a proof-of-concept, intended to show how to generate animated plots with VisIt and LULESH.*

## Build

 1. Run `fetch-and-build-silo.sh`. This will ensure the LLNL Silo library is available for LULESH to use.
 1. Run `build-lulesh.sh`, or run the makefile in the `lulesh/` directory.

## Generate data for plotting

 1. Run `run-lulesh.sh`, or run `./lulesh -v` in the `lulesh/` directory.

## Plot the data

 1. Follow the instructions in the `scripts/` directory.
