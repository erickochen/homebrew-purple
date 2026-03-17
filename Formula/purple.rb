class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.3.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.3.0/purple-2.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "2a807dd5ae8e6f8ff84ec0205d47a4229c6b32d95d127556ed6d76f121725c58"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.3.0/purple-2.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "c0ed6911306cfa6e1f91021fa3a4056b5fb8d0fc2f3f9ab3a4fa065ca08de463"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
