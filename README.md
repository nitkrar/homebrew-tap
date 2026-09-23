# nitkrar/homebrew-tap

```sh
brew install nitkrar/tap/clihub
clihub init
```

`brew` links both `ch` and `clihub`. `clihub init` writes
`~/.clihub/config.toml` and installs shell completion.

```sh
brew install nitkrar/tap/repoglass
```

`brew` links both `rpg` and `repoglass`. The first command that needs an
index builds it, downloading the default model once.

## Releasing a new version

`repoglass` updates itself: its `release` workflow pushes here after
publishing to PyPI, rewriting `url` and `sha256` for the new tag. It
authenticates with a `HOMEBREW_TAP_TOKEN` secret held in that
repository.

`clihub` is still bumped by hand:

```sh
curl -sL -o /tmp/src.tar.gz \
  https://github.com/nitkrar/clihub/archive/refs/tags/vX.Y.Z.tar.gz
shasum -a 256 /tmp/src.tar.gz
```

Update `url` and `sha256` in `Formula/clihub.rb`, commit, push.

## repoglass resources

The dependency pins are independent of repoglass's own version, so a
release bump does not touch them. Regenerate only when the dependencies
in `pyproject.toml` change:

```sh
brew trust --formula nitkrar/tap/repoglass
brew update-python-resources Formula/repoglass.rb
```

`brew install` trusts a formula on its own, so this is a step for editing
one, not for installing it. Without it `update-python-resources` and
`audit` refuse to load the formula at all.

That writes sdist pins for everything. Six resources must then be put
back to wheels, because this tap has no bottle and building them from
sdist would land on every machine that installs: `numpy`, `hf-xet`,
`safetensors`, `tokenizers` and `tree-sitter-language-pack` otherwise
compile, and `cloudpickle`'s sdist does not build at all. They carry
one URL per platform; `WHEELS` in the formula lists them.

`numpy`'s wheels are built per cpython version, so its four pins move
with `depends_on "python@3.14"`. The rest are abi3 and do not.

```sh
brew audit --strict --formula nitkrar/tap/repoglass
brew install --build-from-source nitkrar/tap/repoglass
brew test nitkrar/tap/repoglass
```
