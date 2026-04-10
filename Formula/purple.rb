class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.32.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.32.1/purple-2.32.1-aarch64-apple-darwin.tar.gz"
      sha256 "6968846aaa8a1b1ebcab478dafc61a7757fc3227211e81413d33c9945ab4f83f"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.32.1/purple-2.32.1-x86_64-apple-darwin.tar.gz"
      sha256 "42aa06865a30ff9b3e67698f18b066828421ed0b32be1c5ab3f19b8b9e10a7dc"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
