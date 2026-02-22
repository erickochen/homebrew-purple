class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.1.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.1.0/purple-1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "7ddae53e615eb6fd33dbc46b8006d2a01eb00fc3f69bfe4d6946356a60ccb534"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.1.0/purple-1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "08611080df369a2882cbc0910479e1f87d78c149c8e07f87c1824fc93bdebda6"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
