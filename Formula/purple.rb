class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.24.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.24.0/purple-1.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "2c3625a6e9f57cdeb7dda81a9c5c8b014309ca66b331ddfed945c4ae996d3454"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.24.0/purple-1.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "6f6fa71460647fa5e545e28fa3c7e9b27e82f17bd1bcfdf40719915fa8ee9fb6"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
