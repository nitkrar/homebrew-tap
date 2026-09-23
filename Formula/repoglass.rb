class Repoglass < Formula
  include Language::Python::Virtualenv

  desc "Local code and prose search with exact symbol lookup"
  homepage "https://github.com/nitkrar/repoglass"
  url "https://github.com/nitkrar/repoglass/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "ad866558f465707af08356b413bec665ef254b0636eca8e744a45cd15fe20324"
  license "MIT"

  depends_on "libyaml" # pyyaml links against it
  depends_on "python@3.14"

  # Installed from wheels rather than sdists; see install. Their wheels are
  # abi3, so they do not track the python version this formula builds against.
  resource "hf-xet" do
    on_macos do
      on_arm do
        url "https://files.pythonhosted.org/packages/4b/69/55b8dcf636142ae660fec1869fcac14c4da2e8412e14d6eee1523be77e9f/hf_xet-1.6.0-cp38-abi3-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "f0906082d9932ae0c0057fa194041c22b4e2cdb46b2592ef3b91f020d62a081a"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/a2/50/7afa2c9c787405864fc47a0d1bbc02c62e9101947ed43c1f43899fc7d91d/hf_xet-1.6.0-cp38-abi3-macosx_10_12_x86_64.whl", using: :nounzip
        sha256 "633dc0cd71d32da58ab8c03ad38e2fac452c15c2b0a2866ebf6ededfe0a5061d"
      end
    end
    on_linux do
      on_arm do
        url "https://files.pythonhosted.org/packages/9a/69/1f0cbc2fb22ae6082d094f743d1b8945a3f36f6089cb95f42b7ee348cda7/hf_xet-1.6.0-cp38-abi3-manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "0e6e21fa3cdfcdcd76748564bf593870a5e013f47d97cf10aed63aa222cff5b7"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/67/4e/a28359bf1c1ecf11eba22123168c138698f7cb576ac678f5a2e16cd5da08/hf_xet-1.6.0-cp38-abi3-manylinux2014_x86_64.manylinux_2_17_x86_64.whl", using: :nounzip
        sha256 "d62671bb130879cef0ee4c9ebe47a14af6c66ec53e6d84dc15936e5ffdfac82f"
      end
    end
  end

  resource "safetensors" do
    on_macos do
      on_arm do
        url "https://files.pythonhosted.org/packages/f5/b1/fa7c600e7dceae12e9606c7578cbc9ff1e1ed55844883ee5c92205e86226/safetensors-0.8.0-cp310-abi3-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "c80201d22cbf405b80647a60ada77bba06c8fba2da2743ba1e89cdcc39a81f25"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/39/a0/f718cda65b05407d228f97602cf60dca269c979867aa5beb25410de26cd3/safetensors-0.8.0-cp310-abi3-macosx_10_12_x86_64.whl", using: :nounzip
        sha256 "c554f85858e05226d3c2828e32395e677434685d6d94594a41643361c5e837f0"
      end
    end
    on_linux do
      on_arm do
        url "https://files.pythonhosted.org/packages/09/7d/65a7de0af421317bb36a067241e4235fff194eed60b961ed6d3f59a3fc60/safetensors-0.8.0-cp310-abi3-manylinux_2_17_aarch64.manylinux2014_aarch64.whl", using: :nounzip
        sha256 "7a46e5ff292c356d6991e60942ba7f79817682d3a2cef0702136448cb9c4d235"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/28/50/f203ff3a3ddfe19308efc83c5a3a29ed02bf786732ec35e68bf9162f3365/safetensors-0.8.0-cp310-abi3-manylinux_2_17_x86_64.manylinux2014_x86_64.whl", using: :nounzip
        sha256 "fd6f3f93c9a0a7cc2788ee63fb763353d4bd2e89b0751bc78fcf7dda00bea774"
      end
    end
  end

  resource "tokenizers" do
    on_macos do
      on_arm do
        url "https://files.pythonhosted.org/packages/67/49/22da045a91732384d3a3771816bf188dc5a1f702c32e635afa7c679c0bef/tokenizers-0.23.2-cp310-abi3-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "986670e43691469dcee610ea0f846f91a8f84e91fc6f7a48d4c064414c0ec2bf"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/4d/ed/8a443528baa6fac8dfe8c3b75b038c63ac92bb539bcabe311e227c718173/tokenizers-0.23.2-cp310-abi3-macosx_10_12_x86_64.whl", using: :nounzip
        sha256 "85a9a357a3764aecc904ee76bdaf8cf1ad8e5a67a1b929a487c4a39b49ed0e90"
      end
    end
    on_linux do
      on_arm do
        url "https://files.pythonhosted.org/packages/2e/4d/8f569ed49372a3ed8e57099bd515055fd48d7c95912c4307cda6973c2168/tokenizers-0.23.2-cp310-abi3-manylinux_2_17_aarch64.manylinux2014_aarch64.whl", using: :nounzip
        sha256 "a37039b5dfc4af84eb3ef0a92f4307e28936c8f9adccba2629d36f652e9bf7a2"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/2c/ca/ca6b93c7820df123b2662a9469e8facc826ccc94e98fdd0d615f6431e73a/tokenizers-0.23.2-cp310-abi3-manylinux_2_17_x86_64.manylinux2014_x86_64.whl", using: :nounzip
        sha256 "41c2f84d172449b4dadb9cdc508e3e364076613c35b16e76ecfe47a60d1e3305"
      end
    end
  end

  resource "tree-sitter-language-pack" do
    on_macos do
      on_arm do
        url "https://files.pythonhosted.org/packages/fe/a7/7efe38f71d6487a533c45090e8df684d98f9ce817f86506bdc6a412fcafe/tree_sitter_language_pack-1.20.0-cp310-abi3-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "4f0b0155046d9027c2ca86a2e67b0f74040bd7520eaaa640b94becb8df042f72"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/12/07/0976aab467781eb1f33d39433dfea75eb2ffd2e9e549511971725e057eda/tree_sitter_language_pack-1.20.0-cp310-abi3-macosx_10_12_x86_64.whl", using: :nounzip
        sha256 "b8fdcda83f48ee05b7a55119cf8417a4bd91ac75205d0294aa06dd5d39f59e13"
      end
    end
    on_linux do
      on_arm do
        url "https://files.pythonhosted.org/packages/e2/91/b89308f744e35d414a02efe2d122d051b74e275edb852fdcdd58238f1ab3/tree_sitter_language_pack-1.20.0-cp310-abi3-manylinux_2_34_aarch64.whl", using: :nounzip
        sha256 "355c35042989ec176dc9ded7082d3357b668429ea873ff76f2b9a6a7d753731b"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/89/72/02da1179165c74930c489565d00388201c9d26533fdd3b61a5eae4cc347e/tree_sitter_language_pack-1.20.0-cp310-abi3-manylinux_2_34_x86_64.whl", using: :nounzip
        sha256 "e53fa9e1b281c21f1d885ae6a30828c2af2b0c43f221b7bc3c381fbdec4b1409"
      end
    end
  end

  # cloudpickle 3.1.2's sdist declares the legacy [tool.flit.metadata] table,
  # which flit_core 4 refuses to read. Its wheel carries the same pure-python
  # code and is not affected. joblib requires it, so it cannot be dropped.
  resource "cloudpickle" do
    url "https://files.pythonhosted.org/packages/88/39/799be3f2f0f38cc727ee3b4f1445fe6d5e4133064ec2e4115069418a5bb6/cloudpickle-3.1.2-py3-none-any.whl", using: :nounzip
    sha256 "9acb47f6afd73f60dc1df93bb801b472f05ff42fa6c84167d25cb206be1fbf4a"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a9/d2/f4d173e22df740bc37b1db102b386ba719b66e95b0f0d751f556b387e6d2/anyio-4.15.1.tar.gz"
    sha256 "9f28306018cbd6d329e64a36d58256edff76dd996fe423bc957326e578b82a94"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/a3/c2/24167ea9858356b47a87a50d39908bfdb72ceeefe0041586e704e5376b3a/certifi-2026.7.22.tar.gz"
    sha256 "741e2c3b351ddf169a738da9f2c048608ff7f2c5cc02f1ebc6b118bb090d5d55"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/c7/0e/7fa0ef50764b67090eca4114772a2abf8b6148198475e54c660b97caeee6/click-8.5.0.tar.gz"
    sha256 "ba0d2089de75ea0310e2dde03160e6ca10009947fb95a182f9b54021bb272e34"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/6f/38/88cd6eda96c40594a1e3da7d8b40f04bc40ace5a6aef9ac5cb407540f173/filelock-4.0.1.tar.gz"
    sha256 "fdefc3f3e87716d855ae2b732c1cfd521dd99799ef2b4d00e8c0d4dcdc7cc94b"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/77/cd/9be253869fc42e764de7f3dedd6969af7d44ff9c3375214a3442a6f3fc08/fsspec-2026.9.0.tar.gz"
    sha256 "0f08147951c8cb31d844c3547d631053b127863b60be04cf06e121333ee0e2fe"
  end

  resource "grep-ast" do
    url "https://files.pythonhosted.org/packages/67/82/a87079945a7c15d242cb586ae22e17952132439eaa9c878ec5fbdc61c54d/grep_ast-0.9.0.tar.gz"
    sha256 "620a242a4493e6721338d1c9a6c234ae651f8774f4924a6dcf90f6865d4b2ee3"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/fe/0f/e83fdd856da8fca26bf78d71709ebd120432a0ce535e72b9597cab1eb5bf/huggingface_hub-1.32.0.tar.gz"
    sha256 "ed70a45498abe86039df7c2f4e5f7575de524be908d3840e8f828d5525eafd6a"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  resource "joblib" do
    url "https://files.pythonhosted.org/packages/d5/1d/537ab090f302b838943a1b56497dd53059b9a9b46a074936470173a2e207/joblib-1.6.0.tar.gz"
    sha256 "2ccc96785b12046c08fd6d55839c12857831b54a3c1673ffadd2f04bfc4eda03"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  resource "model2vec" do
    url "https://files.pythonhosted.org/packages/fd/e5/118c4a8af078ff97d9228718fbcd7d4f7e9cae93c3af59652d6f3407010a/model2vec-0.9.0.tar.gz"
    sha256 "f50229cea128c9db5cfa7b2173478294be3c84e5d3d7fb8487ebd7af285383ab"
  end

  # Unlike the abi3 wheels above, numpy's are built per cpython version, so
  # these pins track depends_on "python@3.14" and must move with it.
  resource "numpy" do
    on_macos do
      on_arm do
        url "https://files.pythonhosted.org/packages/9e/59/abcc2d8def4fd60eec7d87f92d27c13448ffd9ab14339bcc63a0d7a2fdea/numpy-2.5.3-cp314-cp314-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "012e66aca395d795496446e52aeeb5866312a5d4d3f27da270e5a0b43f70dc5c"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/70/78/cf416f15dc29375a229d9dfebf8db6e313f291580b39fa1a568b6052bb07/numpy-2.5.3-cp314-cp314-macosx_10_15_x86_64.whl", using: :nounzip
        sha256 "350ba9783ce969cf9f7ce6e6a9a58e1a6e2a19ca025b7ee448c4db727706212a"
      end
    end
    on_linux do
      on_arm do
        url "https://files.pythonhosted.org/packages/9c/72/12918652e7912ef9751e8694c88820fcd1908e0618cb23f5f3caa6004b7b/numpy-2.5.3-cp314-cp314-manylinux_2_27_aarch64.manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "be5a8381859b6da607c84f4f7d6847725f1cf1853ef8a2c9e115b7d58bef47dc"
      end
      on_intel do
        url "https://files.pythonhosted.org/packages/45/8f/9beacf79ca7c650688ad0baa80931adb988fe6e6e5d5903c23cc3dbd70eb/numpy-2.5.3-cp314-cp314-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "b0521d0f4aebb6e06189451025fa17a913287b13c03d5fe05c017333b654ea5b"
      end
    end
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/7d/fa/3944b40b07da9ce895c0e6303a5ab7d53da063554f534556b134a54d6093/packaging-26.3.tar.gz"
    sha256 "94edc256424af38762eb31306eed28beb9f0efc50a8837492c9d6fd6004aed79"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/5a/82/42f767fc1c1143d6fd36efb827202a2d997a375e160a71eb2888a925aac1/pathspec-1.1.1.tar.gz"
    sha256 "17db5ecd524104a120e173814c90367a96a98d07c45b2e10c2f3919fff91bf5a"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/0d/ea/b2a5bd54b28a324dae8211928b2d730b6547500342c7e6c6dea08bd0a485/tqdm-4.70.1.tar.gz"
    sha256 "cefd0eca11b2a37a3aee776544d4f4ae913f02688135b5556b8788dfa474afc4"
  end

  resource "tree-sitter" do
    url "https://files.pythonhosted.org/packages/f7/03/5600b84aff2e6c4fe80cfebb4063fe2f50299521befe5f6092ab8c082f4a/tree_sitter-0.26.0.tar.gz"
    sha256 "b40c219edccc4564530c96f8f1556f6202b37cda964d1cbd7bd2b7e68b40a245"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  # Resources carrying a compiled extension are installed from the wheels their
  # projects publish. Building them from sdist instead would pull in a Rust
  # toolchain for four of them, and brew has no bottle for this tap, so that
  # cost would land on every machine that installs rather than once here.
  WHEELS = %w[cloudpickle hf-xet numpy safetensors tokenizers tree-sitter-language-pack].freeze

  def install
    venv = virtualenv_create(libexec, "python3.14")

    WHEELS.each do |name|
      resource(name).stage do
        system libexec/"bin/python", "-m", "pip", "install", "--no-deps",
               "--ignore-installed", "--no-compile", Dir["*.whl"].fetch(0)
      end
    end

    venv.pip_install resources.reject { |r| WHEELS.include?(r.name) }
    venv.pip_install_and_link buildpath
  end

  # Anything that reads an index is out of reach here: building one resolves
  # the embedding model, and that is a download this test should not make.
  test do
    assert_match version.to_s, shell_output("#{bin}/rpg --version")
    assert_match version.to_s, shell_output("#{bin}/repoglass --version")
    assert_match "symbol", shell_output("#{bin}/rpg --help")
  end
end
