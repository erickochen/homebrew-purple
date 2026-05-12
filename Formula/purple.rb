class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.12.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.12.1/purple-3.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "239b21a5443166d7d43d2cda701dd3d890ed9ea0c2d1c75c8ee76e64f9e23d99"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.12.1/purple-3.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "5a722ba24caaa6f960717141d6f396912153febad7b66582593c07ed9248dd94"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
