class RepoglassRs < Formula
  desc "Local code and prose search with a symbol table, in Rust"
  homepage "https://github.com/nitkrar/repoglass-rs"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nitkrar/repoglass-rs/releases/download/v0.1.2/repoglass-rs-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "e255ac10b7a2a8d3447a11e4aa8776c1d4fb7020eb7d0b5cf204afe6f6212fac"
    end
    on_intel do
      url "https://github.com/nitkrar/repoglass-rs/releases/download/v0.1.2/repoglass-rs-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "f0215e6ab6b763d268e5ded4d60132582a58f7f08ceb03eeb3aa9ea9bf569b9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nitkrar/repoglass-rs/releases/download/v0.1.2/repoglass-rs-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d23f9027f3d0422bf24908ae0fa089e0a04051b50b8e83a25ff5db90edc5092e"
    end
    on_intel do
      url "https://github.com/nitkrar/repoglass-rs/releases/download/v0.1.2/repoglass-rs-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c9d306dcba4db48eab332aa625940db78495337b452a91d55fb916027b009db"
    end
  end

  # Both install `rpg` and `repoglass`.
  conflicts_with "repoglass", because: "both install the rpg and repoglass commands"

  def install
    bin.install "rpg", "repoglass"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/rpg --version").strip
  end
end
