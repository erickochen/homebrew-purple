class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.21.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.21.0/purple-1.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "1ebaf055cccbc191306e95c6db2f85e0ac26dea49c08b79a8787714349236944"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.21.0/purple-1.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "e096954fc843edf8d703f5a6d4f361b89b678a5ff2c6ca2faa6c7e5e413e8679"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
