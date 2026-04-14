class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.38.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.38.0/purple-2.38.0-aarch64-apple-darwin.tar.gz"
      sha256 "5044712921da85034207a7f0ced42127f0f8b816c6051023cccec96166365a14"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.38.0/purple-2.38.0-x86_64-apple-darwin.tar.gz"
      sha256 "87c3e9207649c36ab8758ddea53504250e9a77e0a497b64f19af0cef6a8de845"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
