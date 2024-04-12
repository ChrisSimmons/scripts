# Commonly-used Scripts

- Bootstrapping: allowing a system to get some baseline configuration in place using the common tools available on the system.
- Common includes/"library" functions

Many scripts here are intended to be used by downloading via HTTP and calling the script in one motion.  An example of this pattern, assuming a bash shell, which will simply print "Hello world!" at the command line:

``` bash
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/hello-world.sh)
```

Some systems don't seem to honor this, in which case you can use a subshell:

``` bash
curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/hello-world.sh | bash
```

## Idempotency

Unless otherwise noted, the scripts here are idempotent.  Feel secure knowing you can run these over and over.  The only call-out here is the SSH key generation (`generate-ssh-key.sh`).  In this case it is left to an interactive choice of whether to overwrite the current key or not.  Overwriting or not overwriting and the consequences thereof are left up to the caller.

## QUICK BOOTSTRAP

In most cases, you'll use this repo to bootstrap your login on a machine once.  The full/all-in-one script for this is `quick-boostrap.sh`.  Run it like so:

``` bash
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/quick-bootstrap.sh)
```

## Additional scripts

Additional scripts (not included in the QUICK BOOTSTRAP)

Install Docker:

``` bash
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/install-docker.sh)
```

Deactivate resolved:

``` bash
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/deactivate-resolved.sh)
```
