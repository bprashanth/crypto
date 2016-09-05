# Contributing guidelines

All contributions are welcome. The process involves: [classification](#classification), [implementation](#implementation) and [cryptanalysis](#cryptanalysis). The bar for each is very low.

### Classification

Classify the algorithm into the directory structure encoded in this repo. Namely:
* __symmetric__: symmetric key, single key or secret key schemes. We assume Alice
and Bob have a secure channel over which they exchange the key.
* __asymmetric__: public key crypto. Anyone can encrypt using a public key, only
users with the private key can decrypt.
* __protocol__: protocols to apply cryptographic methods, such as those used for key
exchange.

### Implementation

Create a directory in the appropriate parent dir named after your algorithm and
implement the `Crypto` base class in a `.cc` file. Export the class through a
`.h` file. All submitted algorithms must be runnable through the cli. Your
encrypt/decrypt methods will called based on the `--alg` argument. Tests are
not mandatory but encouraged.

### Cryptanalysis

Your directory must contain a README with a cryptanalysis section describing
attack vectors like:

* How long it takes to brute force the algorithm
* Analytical shortcomings (optional, eg: frequency analysis)
* Implementation shortcomings (optional but encouraged, eg: side channel/timing
attacks)
* Social attack vectors (optional, eg: if deployed in production and sysadmi
goes rogue, what happens?)

## Bug policy

I don't want to impose undue burden on contributors. At the
same time, it is my responsibility as maintainer of this repo to ensure that
we don't indulge in mis-education on the internet. As such:
  * Questions will be answered
  * Features will be tracked and handled according to priority
  * All bugs related to running the cli, building, and deploying the container
will get fixed.
  * Bugs against implementation will not be entertained, unless:
    * The implementation is downright wrong
    * The implementation causes builds/cli to malfunction

