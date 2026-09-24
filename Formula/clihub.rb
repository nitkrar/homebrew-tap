class Clihub < Formula
  include Language::Python::Virtualenv

  desc "Personal umbrella CLI router"
  homepage "https://github.com/nitkrar/clihub"
  url "https://files.pythonhosted.org/packages/70/76/d7a8893a7ed685f384012259177097f53a01ae158715a2b72d3d154343ae/clihub_cli-1.0.4.tar.gz"
  sha256 "c9db4a4e919784e0f5558c863205227d3779ea920ec05957ef46c587ca65298a"
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
