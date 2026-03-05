class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.14.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.14.0/purple-1.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "41ae549c4b0c3646f33a8b1ae3d7eee71d1a3c4dff3f20ca56c16c17e5f2a4a8"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.14.0/purple-1.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "010057d45985952f2a64f05c5c65f5180e05b030d1f1d9f11e91ca14fccbb668"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
