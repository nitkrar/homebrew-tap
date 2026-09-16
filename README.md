# nitkrar/homebrew-tap

```sh
brew install nitkrar/tap/clihub
clihub init
```

`brew` links both `ch` and `clihub`. `clihub init` writes
`~/.clihub/config.toml` and installs shell completion.

## Releasing a new clihub version

```sh
curl -sL -o /tmp/clihub.tar.gz \
  https://github.com/nitkrar/clihub/archive/refs/tags/vX.Y.Z.tar.gz
shasum -a 256 /tmp/clihub.tar.gz
```

Update `url` and `sha256` in `Formula/clihub.rb`, commit, push.
