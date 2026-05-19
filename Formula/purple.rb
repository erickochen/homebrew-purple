class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.1/purple-3.15.1-aarch64-apple-darwin.tar.gz"
      sha256 "bf0b4258e59495d66151c59237453e15e22086ae5e97e900a212437810f35abe"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.1/purple-3.15.1-x86_64-apple-darwin.tar.gz"
      sha256 "e435b1de44026e2d5c7e08fdf7b6065d9aafe3b473f43b4cb8b3e4ae4d9b392d"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
