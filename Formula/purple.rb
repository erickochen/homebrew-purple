class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.14.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.14.1/purple-1.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "25c3a0b9ee613a612c97d2a384c19e552c69c9bd2cfce575ceb83c3d08baceaf"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.14.1/purple-1.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "61515ee97a3786a4a40d308ceda9b9621a7667192413ae9549ec952ede2b6674"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
