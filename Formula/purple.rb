class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.7.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.7.0/purple-1.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "4b47a786b49598a0c7520559de9ea75d5355c9e16d531acb65737519eebf6c51"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.7.0/purple-1.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "73320b2260f10f4e1666d72d4f6fc3fe0f24a8f55046c526a6b681969007ebbb"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
