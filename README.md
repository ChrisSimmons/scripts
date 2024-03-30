# System Bootstrapping Scripts

These are scripts to be used for system bootstrapping, allowing a system to get some baseline configuration in place using the common tools available on most *nix machines (in my world at least).

Example of this pattern, which will simply print "Hello world!" at the command line:

``` bash
curl -sSL https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/init/hello-world.sh | bash
```

Notes:

- We assume you're at a `bash` shell
  - if you're not, launch one with `bash`
- Only non-interactive scripts are here (e.g. nothing with `read`).  While it may be possible (see [this for example](https://stackoverflow.com/a/5735767/208990)), I want to keep this simple.
