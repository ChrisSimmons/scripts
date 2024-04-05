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

## Idempotency

An important tenet for these scripts is that they are idempotent.  Feel secure knowing you can run these over and over.  The only call-out here is the SSH key generation (`generate-ssh-key.sh`).  In this case it is left to an interactive choice of whether to overwrite the current key or not.  Overwriting or not overwriting and the consequences thereof are left up to the caller.

## QUICK BOOTSTRAP

In most cases, you'll use this repo to bootstrap your login on a machine once.  The full/all-in-one script for this is `quick-boostrap.sh`.  Run it like so:

``` bash
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/quick-bootstrap.sh)
```

## Additional scripts

Additional scripts (not included in the QUICK BOOTSTRAP)

Install Docker:

``` bash
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/install-docker.sh)
```

Deactivate resolved:

``` bash
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/deactivate-resolved.sh)
```
