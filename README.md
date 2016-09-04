# Cryptology toolbox

A toolbox of common cryptographic algorithms, and some perfunctory
cryptanalysis, packaged up into a container.

## Usage

All the algorithms are packaged into a single binary in a docker container [1](#why-docker).

```console
$ docker run -it bprashanth/crypto-toolbox:0.1 -- crypto --help
crypto --e/d --in --out --spec
Available algorithms:
substitution
```

## Submission guidelines

The submission process involves:
* [Classification](#classification)
* [Implementation](#implementation-guidelines)).
* [Cryptanalysis](#cryptanalysis)

The bar for each of these is very low.

### Classification

Classify the algorithm into the directory structure encoded in this repo. Namely:

* symmetric: symmetric key, single key or secret key schemes. We assume Alice
and Bob have a secure channel over which they exchange the key.
* asymmetri: public key crypto. Anyone can encrypt using a public key, only
users with the private key can decrypt.
* protocol: protocols to apply cryptographic methods, such as those used for key
exchange.

### Implementation

All submitted algorithms must be runnable through the cli.

* Create a directory in the appropriate parent dir named after your algorithm
* Implement it as a mixin of cli and crypto
* Your encrypt/decrypt methods are called based on the --alg argument

The bar is pretty low, it needs to work. Tests are not mandatory but encouraged.

### Cryptanalysis

You cannot submit an algorithm without some form of cryptanalysis. Your
directory must contain a README describing the algorithm, and a CRYPTANALYSIS
file describing attack vectors like:

* How long it takes to brute force the algorithm
* Analytical shortcomings (optional, eg: frequency analysis)
* Implementation shortcomings (optional but encouraged, eg: side channel/timing
attacks)
* Social attack vectors (optional, eg: if deployed in production and sysadmi
goes rogue, what happens?)

## Appendix

### Why docker?

Containers are an easily portable (across linux distros at least, and windows
is getting there) hermetic way to seal an application and all its dependencies.
As of 2016, docker is the most widely used implementation of application
containers.

## Submitting pull requests

Expect a delay of O(days) to get a response to a new pull request.

## Opening bugs

Here is my bug policy:
* Questions will be answered
* Features will be tracked and handled according to priority
* All bugs related to running the cli, building, and deploying the container
will get fixed.
* Bugs against implementation will not be entertained by me, unless:
  * The implementation is downright wrong
  * The implementation causes builds/cli to malfunction

The last one is a little contention, so allow me to clarify. I don't want to
impose undue burden on contributors. At the same time, it is my responsibility
as maintainer of this repo to ensure that we don't indulge in mis-education on
the internet.

