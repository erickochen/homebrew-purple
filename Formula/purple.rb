class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.15.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.15.0/purple-2.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "14013ef385f5a8ae0e38624d20dc6a115abe72105344f6ba93348ea37430a776"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.15.0/purple-2.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "d4314458cbaa8502c5155b0a00ac16749dc12b080cb63f47fe953e084865385c"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
