class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.34.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.34.0/purple-2.34.0-aarch64-apple-darwin.tar.gz"
      sha256 "158fa22c0c85a6253c74b57487b664ea1f716198c2990ef95ee0eecfa3865577"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.34.0/purple-2.34.0-x86_64-apple-darwin.tar.gz"
      sha256 "50e50f1ff8334ca95ddebe2d8336364505600b4156fdaf14c639d5d87f12333b"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
