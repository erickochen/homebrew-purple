class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.4.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.4.0/purple-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "5b33e72ad2989726813b168b62c9c5ecf885c5e0500e93c1879e06463319c600"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.4.0/purple-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "2abae8dcca98ce7c767320401acf06965ae2a9ff6f49373e6649e3e6078d34ca"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
