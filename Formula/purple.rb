class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.31.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.31.1/purple-3.31.1-aarch64-apple-darwin.tar.gz"
      sha256 "696a18611008d0e847db5fdbbcaa64f5f12aa63535dea3c4ce70f9c2c98fc236"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.31.1/purple-3.31.1-x86_64-apple-darwin.tar.gz"
      sha256 "d1f2f76395e139d2817b7662d139463e769519b695fc7c71acafce563f368183"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
