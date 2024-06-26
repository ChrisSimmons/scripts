# Commonly-used Scripts

- Bootstrapping: allowing a system to get some baseline configuration in place using the common tools available on the system.
- Common includes/"library" functions
- **Unless otherwise noted, the scripts here are idempotent.**

Many scripts here are intended to be used by downloading via HTTP and calling the script in one motion.  An example of this pattern, assuming a bash shell, which will simply print "Hello world!" at the command line:

``` bash
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/hello-world.sh)
```

Some systems don't seem to honor this, in which case you can use a subshell:

``` bash
curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/hello-world.sh | bash
```

For Mac OS, which uses an earlier version of bash, you can use this syntax (see comments on [this superuser.com answer](https://superuser.com/a/255278)):

``` bash
source /dev/stdin <<< "$(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/hello-world.sh)"
```

## QUICK BOOTSTRAP

In most cases, you'll use this repo to bootstrap your login on a machine once.  The full/all-in-one script for this is `quick-boostrap.sh`.  Run it like so:

``` bash
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/quick-bootstrap.sh)
```

## Functions

- Bash functions are provided in `unix-like/functions.sh` and can be `sourced` in files like:

``` bash
# ...
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/functions.sh)
# ...
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
