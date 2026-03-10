class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.23.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.23.0/purple-1.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "bdb3eec2a4408b2b1d7f172764d59cb9f7ef4395d4235b6348a35d5cd67e53aa"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.23.0/purple-1.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "2f2fdd9140745fa798a1dd8e941aa41ac5aa8c35710556bcc630099e0ec8b035"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
