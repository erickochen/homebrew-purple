class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.8.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.8.0/purple-2.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "0c682a9a2815a7e483b23a147628eb94ed2e8b7768e39764066f9a75adba6a87"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.8.0/purple-2.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "bc7cd6ff92870a1ec4e90ea3c4a195c5f415faa25f945a20c7ec3def27c12860"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
