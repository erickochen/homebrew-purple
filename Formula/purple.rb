class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.2.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.2.0/purple-1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "aa062e1f48f3e222e87c8095e3b57796f18c2619e1d05e4ab21c1f085e895d21"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.2.0/purple-1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "c0c830d09615ca0fe9567b5ac2fad25d517470777a07dfe32080f9ebf050395d"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
