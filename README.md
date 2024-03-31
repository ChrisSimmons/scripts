# System Bootstrapping Scripts

These are scripts to be used for system bootstrapping, allowing a system to get some baseline configuration in place using the common tools available on most *nix machines (in my world at least).

Example of this pattern, assuming a bash shell, which will simply print "Hello world!" at the command line:

``` bash
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/hello-world.sh)
```

Some systems don't seem to honor this, in which case you can use a subshell:

``` bash
curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/hello-world.sh | bash
```

## QUICK BOOTSTRAP

In most cases, you'll use this repo to bootstrap your login on a machine once.  The full/all-in-one script for this is `full-bootstrap.sh`.  Run it like so:

``` bash
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/full-bootstrap.sh)
```
