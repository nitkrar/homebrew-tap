class RepoglassRs < Formula
  desc "Local code and prose search with a symbol table, in Rust"
  homepage "https://github.com/nitkrar/repoglass-rs"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nitkrar/repoglass-rs/releases/download/v0.1.0/repoglass-rs-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "b9625fffc7ea5d3cdbc395075d98127aeccbfeb98497b975b67ded8a6baeaa0c"
    end
    on_intel do
      url "https://github.com/nitkrar/repoglass-rs/releases/download/v0.1.0/repoglass-rs-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "39ca0a2bc5c3cf325ac5335b6d92d459b4ceab52a75b9cd149d94e340a1ef96b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nitkrar/repoglass-rs/releases/download/v0.1.0/repoglass-rs-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "59ef94d74a80f913c7255bff37599374029218133317eef0028b405a81fd7584"
    end
    on_intel do
      url "https://github.com/nitkrar/repoglass-rs/releases/download/v0.1.0/repoglass-rs-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ed2150ecc6a2b03297c1e695c123f0b2bf52aecbdc26b44c27754d035a8a4a2"
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
