class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.10"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.10/purple-3.15.10-aarch64-apple-darwin.tar.gz"
      sha256 "873477a293d163d8b54188a8659c85e8f09dfc00a6113a5befbb4f0139da6999"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.10/purple-3.15.10-x86_64-apple-darwin.tar.gz"
      sha256 "b7da06439bc2d4f21ede08bebd16d6361aa86158b9420b8dd13cb4559c081217"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
