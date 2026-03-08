class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.17.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.17.0/purple-1.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "ddb30f7e4c7c13851bafb7cd5c3e3a86e54a098fd148c4084582356153e3c010"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.17.0/purple-1.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "7e5a72b01da184be513d8add45e5d57fbc61188cb921cc8e296be513ff433d97"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
