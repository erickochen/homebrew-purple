class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.9.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.9.0/purple-2.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "2d09fe7b2025d07d595dfd29cab54b81c3723a6e929e04be61ce6ac9b9f2a0d8"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.9.0/purple-2.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "cbd59d25c005feb71e079eb915f05b4aada1b2083e1177275f03743411c4d85a"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
