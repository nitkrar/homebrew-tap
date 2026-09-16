class Clihub < Formula
  include Language::Python::Virtualenv

  desc "Personal umbrella CLI router"
  homepage "https://github.com/nitkrar/clihub"
  url "https://github.com/nitkrar/clihub/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "bb7375cbd9a4227e0277618904ce81a2ba10c689d1d97fc61363b4ec1e0974d1"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      Both `ch` and `clihub` are on PATH. To write ~/.clihub/config.toml and
      install shell completion:
        clihub init
    EOS
  end

  test do
    ENV["CLIHUB_HOME"] = testpath/"clihub"
    assert_match version.to_s, shell_output("#{bin}/clihub --version")
    assert_match version.to_s, shell_output("#{bin}/ch --version")
  end
end
