# nitkrar/homebrew-tap

```sh
brew install nitkrar/tap/clihub
clihub init
```

`brew` links `clihub` only. `clihub init` adds the short `ch` command in
`~/.local/bin` and writes `~/.clihub/config.toml`.

## Releasing a new clihub version

```sh
curl -sL -o /tmp/clihub.tar.gz \
  https://github.com/nitkrar/clihub/archive/refs/tags/vX.Y.Z.tar.gz
shasum -a 256 /tmp/clihub.tar.gz
```

Update `url` and `sha256` in `Formula/clihub.rb`, commit, push.
