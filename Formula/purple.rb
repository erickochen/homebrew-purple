class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.16.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.16.0/purple-1.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "78300554599385455a169159c36648024a2bd64181708124aeee1a758d72b407"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.16.0/purple-1.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "c33a14968db51bb98750029ff96bd7a19b9a6b5bd4f6f0f9b46fe49078ce6c14"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
