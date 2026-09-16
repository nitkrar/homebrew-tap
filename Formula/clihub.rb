class Clihub < Formula
  include Language::Python::Virtualenv

  desc "Personal umbrella CLI router"
  homepage "https://github.com/nitkrar/clihub"
  url "https://github.com/nitkrar/clihub/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "73869dbbd674c28964b4b40d3f3bd4f2b055d90c48bb1d7933256ce764d9b23e"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
    # `ch` stays in the virtualenv but is not linked into Homebrew's bin:
    # `clihub init` owns that name and symlinks it into ~/.local/bin. It finds
    # the script next to the interpreter, so libexec/bin/ch must survive.
    (bin/"ch").unlink
  end

  def caveats
    <<~EOS
      Only `clihub` is linked. For the short `ch` command and ~/.clihub/config.toml:
        clihub init
    EOS
  end

  test do
    ENV["CLIHUB_HOME"] = testpath/"clihub"
    assert_match version.to_s, shell_output("#{bin}/clihub --version")
    refute_predicate bin/"ch", :exist?
    assert_predicate libexec/"bin/ch", :exist?
  end
end
