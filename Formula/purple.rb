class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.13.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.13.1/purple-1.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "8c153a8c9b29f32b708d89ebc3d1741ecdedb0c62ef3ea44b7beeffed75aa3fd"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.13.1/purple-1.13.1-x86_64-apple-darwin.tar.gz"
      sha256 "17e4f3a588c9ca2d1a88dc01274f730180a99088b0ca5693ef35ebdd606d7c6f"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
