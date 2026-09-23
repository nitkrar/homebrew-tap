class Clihub < Formula
  include Language::Python::Virtualenv

  desc "Personal umbrella CLI router"
  homepage "https://github.com/nitkrar/clihub"
  url "https://files.pythonhosted.org/packages/fd/d8/aa34ea1a8f808d1e807be1b3c7648978cd0a97020df0599c60fe5fdf1d94/clihub_cli-1.0.3.tar.gz"
  sha256 "137b72b20ff7a00fde43c2fdf487f0d538fc809244cc326c01deebd6bc00aebc"
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
