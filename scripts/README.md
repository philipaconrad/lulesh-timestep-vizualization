Making animated movies with VisIt
---------------------------------

## Setup

 1. Run LULESH, and wait for all of the per-timestep data to be dumped into the `lulesh` directory.
 1. Install VisIt using the `get-visit.sh` script.
 1. In your shell, run `source .visit-paths` to ensure the VisIt binaries are in your `PATH`.
 1. Now, run `make movie`, or just `make`, to generate an animated movie of the LULESH plots.

## How to modify things

The `gen-session.py` script uses VisIt's Python scripting interface to set up the initial camera angle and plot type.
It saves a session file at the end of its execution, which is used by VisIt's builtin movie script to generate a movie.

The `Makefile` just strings together all of the steps to make creating movies easier.
