class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.4"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.4/purple-3.15.4-aarch64-apple-darwin.tar.gz"
      sha256 "7e27adaf8ac785d66d0eaf23710e8c177fe32850d1b45eacab4d594467a9cbc7"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.4/purple-3.15.4-x86_64-apple-darwin.tar.gz"
      sha256 "32323f76ac9702cd136268e04e52eaa5f135deadef29bd1d097b7873936fb648"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
