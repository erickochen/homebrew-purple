class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.20.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.20.0/purple-2.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "cbef8e241eb2c1c31480087363002ec1fc1510c66fbfac5914abcc2049dbcf34"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.20.0/purple-2.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "2573f98d5568728d853722b7ae1553c46d2b93ae1672584fe1a53e34c1f18242"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
