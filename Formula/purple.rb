class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.2/purple-3.15.2-aarch64-apple-darwin.tar.gz"
      sha256 "03a2c910b2878462b26aa313da5d6d5a9437e9e23e25959a65354e29c4558db5"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.2/purple-3.15.2-x86_64-apple-darwin.tar.gz"
      sha256 "876f0599cea42906d5d26cf47edf5b550a141508be2f1c0fe27b1e5c96d37d37"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
