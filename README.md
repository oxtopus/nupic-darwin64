# nupic-darwin64

Python distribution for NuPIC on OS X.  This project provides a
fully-functional python environment in which to build and run
[NuPIC](https://github.com/numenta/nupic) in a darwin64 (OS X) environment.

## Usage

Clone this repository:

    git clone https://github.com/numenta/nupic-darwin64.git

Activate your environment:

    source nupic-darwin64/bin/activate

Build NuPIC:

    $NUPIC/build.sh

See https://github.com/numenta/nupic#try-it-out for further instructions for
using NuPIC.

## Building nupic requirements

A Makefile is provided should you need to reconstruct this environment.

    source bin/activate
    make
