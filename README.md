# Nixpkgs PYTHONPATH issue repro

The main issue is this:

1. `nix develop -c make pythonpath` outputs nothing
2. Uncomment the `grc` line from `flake.nix`
3. `nix develop -c make pythonpath` outputs
```
/nix/store/vyh48kzgy70ksh593xkik6kzkz0q718b-python3-3.11.9-env/lib/python3.11/site-packages:/nix/store/327bf08j5b7l9cnzink3g4vp32y5352j-python3-3.11.9/lib/python3.11/site-packages
```