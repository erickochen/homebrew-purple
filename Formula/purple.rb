class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.27.3"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.27.3/purple-2.27.3-aarch64-apple-darwin.tar.gz"
      sha256 "407d854ed4ffae4e93b6685896ce9b3ed521e1c694cd93bd05656429afe3d64f"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.27.3/purple-2.27.3-x86_64-apple-darwin.tar.gz"
      sha256 "7518a7561a7fcadc877cf62c7cb3b44b19d7f6832e4a3c9577f7fa8d375a8b2d"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
