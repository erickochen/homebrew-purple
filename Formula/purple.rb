class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.8.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.8.1/purple-1.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "7c20cb8d88f26af1b2b671fcdb3ed431386ff5f1afd2393177a503b7b1129837"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.8.1/purple-1.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "7e0f76c1cf83b211ddabbd4b46d484c57193e633f7c674d1a536708bb821543c"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
