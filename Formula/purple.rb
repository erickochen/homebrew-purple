class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.12.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.12.0/purple-1.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "d25957261d8f9272a2097ff3dcc6d503f2df61d407c2e10c2ca61a0c2c18d881"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.12.0/purple-1.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "fe83f897b805e85a56464c3ccf75c0e61a91616204bbada2363974a2ba4983e2"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
