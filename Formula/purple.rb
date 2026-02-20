class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.5.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.5.2/purple-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "da5a39b9e478ad6c494fb9a54fb4f94e5a53f3acd4bffae00f178ef879cf3a93"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.5.2/purple-0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "91f881b5dfab5ab14e0d80bc9971d6583c1a8e1793b9945c4370c1ad7800c175"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
