class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.31.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.31.0/purple-2.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "b886458055ec4a534d48297b8b0f1d2e7001d1710486af419c52574e5aecc73f"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.31.0/purple-2.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "6a8bcc321d02cd8a486dcc879c90e7727ad13ce670040504a06eb9679a6a8fb4"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
