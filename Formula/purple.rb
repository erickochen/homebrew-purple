class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.6.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.6.0/purple-1.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "663627e8c747092ab3da3701a4352143d7ef1bf1bdbf2fa6ff47fc315285aea4"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.6.0/purple-1.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "ddc54ac748d3cd8273f565c17729955fde8471903034dc1a18f1e7fbbd15e8dc"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
