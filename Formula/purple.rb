class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.9.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.9.0/purple-1.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "1f345b6867e7af65a0136ea0c4f18fb2602395e0a66bfb5cd6093302a46e9a27"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.9.0/purple-1.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "7293e5104d9ea23fd1dbb1597d72a739e2bdb1f46bcdc543d04ab5d7e28027d3"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
