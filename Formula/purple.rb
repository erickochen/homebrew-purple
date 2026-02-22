class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.10.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.10.0/purple-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "25303a1cdb22b9a3356bf8748d3371a0c62357f09e1cc0c8f52c5d840c1e3167"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.10.0/purple-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "34ac6f0062bdadcf994bbfce4abb872d056281628dfa1559b0f3b369cc1a78f2"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
