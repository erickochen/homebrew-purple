class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.26.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.26.1/purple-1.26.1-aarch64-apple-darwin.tar.gz"
      sha256 "759ff6c8d1f568a92de9553a41dc008de0c5bd9a8a74b8872a16b8ee68630579"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.26.1/purple-1.26.1-x86_64-apple-darwin.tar.gz"
      sha256 "cfdc47c66e5a2580f91bc69b14f71a4e2257d652441c1da49a60146e88bccbf4"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
