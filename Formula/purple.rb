class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.37.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.37.0/purple-2.37.0-aarch64-apple-darwin.tar.gz"
      sha256 "81c35c733a5e865ece43785186360f3cede47efc822fa2a5b572f70e5622b8a6"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.37.0/purple-2.37.0-x86_64-apple-darwin.tar.gz"
      sha256 "077f22ff8cb4403c555006ca2e801615cb765ee6e7dc0383ebadbca968db0a6c"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
