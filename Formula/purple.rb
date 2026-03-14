class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.28.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.28.0/purple-1.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "70d6ca0cd1382e221f5108b9c2dc97332b5d50101cc5980c6033cc54cbcaf022"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.28.0/purple-1.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "8e89400376ab4d3788afe1ebcfb7fd08a4359a01b2cb982890503d46903c4669"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
