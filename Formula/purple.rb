class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.19.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.19.0/purple-1.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "9c99cb055a793159f9c3896e20018acbf1761c5e1b47af913717787eba78664b"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.19.0/purple-1.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "423eb418aa91a6e5ade6012263d57264eb1ba874c738a932039518fae8ad1ba2"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
