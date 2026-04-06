class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.28.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.28.0/purple-2.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "f0e2ab07c8e1222cf5fd84724e9a1fc41db795d70a2e8ee4173dfbce5783b2cf"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.28.0/purple-2.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "9a2093b90d86310148789c514e745f07e21beea33eb9231197c778f21e2ae848"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
