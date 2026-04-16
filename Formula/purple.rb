class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.41.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.41.0/purple-2.41.0-aarch64-apple-darwin.tar.gz"
      sha256 "9e2f4caa3bbbea8a324d58f1e873034596a8732b6eccd28e897423e1265b8ccb"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.41.0/purple-2.41.0-x86_64-apple-darwin.tar.gz"
      sha256 "d6b5d8661398b9156c49b096803f1a0971e7d79bb1cbb2a4e889ec4bb9031cc9"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
