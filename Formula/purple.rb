class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.29.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.29.0/purple-2.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "199f74ddd419dc0a731bc6ead68d3cc5056f3f918ba5d79777fd910b32076bc3"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.29.0/purple-2.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "ccdd7c7d8336a1304620c5de8d4de348768b51a6deba4baa66194bc45bed90d1"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
