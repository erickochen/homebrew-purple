class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.14.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.14.1/purple-2.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "43122180075c4a86f78a93c1f2437a51f719a45f578ff40cf48312cdc8fcc62a"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.14.1/purple-2.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "66c84d26cc5725b2312e2a1c41039bc52b182165d9891cdc128f025da4dbc88e"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
