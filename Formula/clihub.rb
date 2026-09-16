class Clihub < Formula
  include Language::Python::Virtualenv

  desc "Personal umbrella CLI router"
  homepage "https://github.com/nitkrar/clihub"
  url "https://github.com/nitkrar/clihub/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "47db84e001aa61a1c8d88c42570184f322b1012bbb286be8f2ddd8602394bae5"
  license "MIT"

  depends_on "python@3.14"

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

      `clihub init` points ~/.local/bin/ch at this exact version's Cellar
      directory, so after every upgrade re-run:
        clihub init --force
    EOS
  end

  test do
    ENV["CLIHUB_HOME"] = testpath/"clihub"
    assert_match version.to_s, shell_output("#{bin}/clihub --version")
    refute_predicate bin/"ch", :exist?
    assert_predicate libexec/"bin/ch", :exist?
  end
end
