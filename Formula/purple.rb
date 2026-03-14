class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.27.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.27.0/purple-1.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "0779920318d2f8f675d0cae39f834fc11504a7702b5bffe919c5c8001b2d2622"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.27.0/purple-1.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "27fe7322bc6b2dfc1d95877576e724d83ad218d6ee9876386a3d455e2af723f4"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
