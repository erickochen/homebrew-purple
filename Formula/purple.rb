class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.0.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.0.1/purple-2.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "8750e760c6fc3a916bb32158ec19c6a838d66625dec766ac669bbe962ab5491f"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.0.1/purple-2.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "a93728d7638837baae5261cf93b0f7aec256508c15bd28c3efe7a03d19ea1afb"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
