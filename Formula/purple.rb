class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.18.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.18.0/purple-2.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "2988a6ac98e9bf8257fe17240815dafc666695b35f11c8eb1200604d6129f495"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.18.0/purple-2.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "ec7f33709e1a1e6edcdb9a72174fbbf66e9a718ad89766ca6819c4bb01733281"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
