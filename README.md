# nupic-darwin64

Python distribution for NuPIC on OS X.  This project provides a
fully-functional python environment in which to build and run
[NuPIC](https://github.com/numenta/nupic) in a darwin64 (OS X) environment.

## Usage

Clone this repository:

    git clone https://github.com/numenta/nupic-darwin64.git

Activate your environment:

    source nupic-darwin64/bin/activate

Install requirements:

    make nupic-requirements

Build NuPIC:

    $NUPIC/build.sh

See https://github.com/numenta/nupic#try-it-out for further instructions for
using NuPIC.

To exit this environment when you are done: 

    deactivate_nupic
