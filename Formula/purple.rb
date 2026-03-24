class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.10.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.10.1/purple-2.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "fdbc6ad88ab9824cc9349dd5f0b337925678490df6e60754dbd488d71be96e61"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.10.1/purple-2.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "e0c7000cfed2d4150b6daeb0d7cea96cbbd3d0e18a5c577aa936d46d9beda5d7"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
