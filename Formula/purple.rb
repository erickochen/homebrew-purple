class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.2.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.2.0/purple-2.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "eca2d34ecd074d3e593877b3a8b31ae0cf31749cd3d637ad97554e512dc6c0ef"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.2.0/purple-2.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "bca659f27d4a56fe48bb5c7f782eaaad8682f9be184009581bae4d49774e2b39"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
