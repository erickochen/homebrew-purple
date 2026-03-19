class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.6.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.6.0/purple-2.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "628c3de0cb97bc16f39dbebf416b988dad95dd8f89a76cc87da1e3f2201431f5"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.6.0/purple-2.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "b80c5c893a443e9b3c7faee80b4b5818bfa68ce9c32424cd26962a09583ca5e6"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
