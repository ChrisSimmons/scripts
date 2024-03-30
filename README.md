# System Bootstrapping Scripts

These are scripts to be used for system bootstrapping, allowing a system to get some baseline configuration in place using the common tools available on most *nix machines (in my world at least).

Example of this pattern, which will simply print "Hello world!" at the command line:

``` bash
curl -sSL https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/init/hello-world.sh | bash
```
