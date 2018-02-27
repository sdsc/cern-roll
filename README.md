# SDSC "cern" roll

## Overview

The SDSC cern-roll bundles software tools published by [CERN](http://www.cern.ch) into a Rocks(r) roll that can be installed easily on a Rocks(r) cluster.

<a href='http://root.cern.ch'>root</a> packages for curve fitting, plotting,
high energy physics computations and data analysis

<a href='http://geant.web.cern.ch'>geant</a> (Geometry ANd Tracking) simulates
particles passing through matter via Monte Carlo methods

<a href='http://http://proj-clhep.web.cern.ch'>clhep</a> (Class Library for
High Energy Physics). Math libraries for vector math, random number generation
and linear algebra


## Requirements

To build/install this roll you must have root access to a Rocks development
machine (e.g., a frontend or development appliance).

If your Rocks development machine does *not* have Internet access you must
download the appropriate cern source file(s) using a machine that does have
Internet access and copy them into the `src/cern` directories on your Rocks
development machine.


## Dependencies

The sdsc-roll must be installed on the build machine, since the build process
depends on make include files provided by that roll.

The roll sources assume that modulefiles provided by SDSC gnucompiler and cmake
rolls are available, but it will build without them as long as the environment
variables they provide are otherwise defined.


## Building

To build the cern-roll, execute this on a Rocks development
machine (e.g., a frontend or development appliance):

```shell
% make 2>&1 | tee build.log
```

A successful build will create the file `cern-*.disk1.iso`.  If you built the
roll on a Rocks frontend, proceed to the installation step. If you built the
roll on a Rocks development appliance, you need to copy the roll to your Rocks
frontend before continuing with installation.


## Installation

To install, execute these instructions on a Rocks frontend:

```shell
% rocks add roll *.iso
% rocks enable roll cern
% cd /export/rocks/install
% rocks create distro
```

Subsequent installs of compute and login nodes will then include the contents
of the cern-roll.  To avoid cluttering the cluster frontend with unused
software, the cern-roll is configured to install only on compute and
login nodes. To force installation on your frontend, run this command after
adding the cern-roll to your distro

```shell
% rocks run roll cern host=NAME | bash
```

where NAME is the DNS name of a compute or login node in your cluster.

In addition to the software itself, the roll installs cern environment module
files in:

```shell
/opt/modulefiles/applications/cern
```

## Testing

The cern-roll includes a test script which can be run to verify proper
installation of the roll documentation, binaries and module files. To run
the test scripts execute the following command(s):

```shell
% /root/rolltests/cern.t 
```
