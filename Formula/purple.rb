class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.25.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.25.0/purple-1.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "ef330aa72ef05a4f3f472d75a9982663d02a54d1a90218dd6243ad3a5ef79e9b"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.25.0/purple-1.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "5da4eb94c33f3eafd66f7bdf4cbd37751dcc62545a72b832dbbe14a27f8d4ded"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
