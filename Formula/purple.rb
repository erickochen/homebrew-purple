class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.31.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.31.0/purple-2.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "e6c03486f63570b701debff47b8ed851d58099b7ca2aeea5fdc9bfa9676f8a7a"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.31.0/purple-2.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "8f8b21db7754de97088fd8aeca15ac0c33a6c84cc249be6cc146d00a4ba3d74b"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
