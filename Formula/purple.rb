class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.2.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.2.0/purple-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "567917138f87fbcac97a0225d8939077e2990d97484f1f9cc8fbf7cf9a42615f"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.2.0/purple-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "3b9afb1b7d035bbb30078e2b10e773480aa24c96518cffe1c460b397b3046470"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
