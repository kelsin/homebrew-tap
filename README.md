# homebrew-tap

```bash
brew install kelsin/tap/sync-roms
```

Formulae: `sync-roms` ([kelsin/sync-roms](https://github.com/kelsin/sync-roms)).

## Updating Python resources

Resources point at pure-Python wheels, which Homebrew only unpacks, so installs skip
building every dependency from source. `brew update-python-resources` rewrites them to
sdists, so after running it (or after changing dependencies) run:

```bash
python3 scripts/wheel-resources.py Formula/sync-roms.rb
```

The script pins each resource to the same version and swaps in its `py3-none-any` wheel.
