class Clihub < Formula
  include Language::Python::Virtualenv

  desc "Personal umbrella CLI router"
  homepage "https://github.com/nitkrar/clihub"
  url "https://files.pythonhosted.org/packages/67/fe/417243f11a10b53ff571a5ab201151c5bfe60c34ab891ae7060a9059e938/clihub_cli-1.1.0.tar.gz"
  sha256 "403ab4146b14041e51478055a09a564481a4f54753faba15e5378d8aef95b7a0"
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
