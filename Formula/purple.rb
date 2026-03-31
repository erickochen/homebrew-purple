class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.23.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.23.0/purple-2.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "3b0b00945f67391e872e24c383d52398aabb2c384769e0e8688d2778762f1633"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.23.0/purple-2.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "62031ea2286b1813fa4f40fa34f9552614af5ce6eea8e7098657bdb417e7d9f6"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
