class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.30.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.30.1/purple-2.30.1-aarch64-apple-darwin.tar.gz"
      sha256 "e0368d2355f65643c944eeeb8a084373d1bc2e0c47da03f83fdefaa98aa58b41"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.30.1/purple-2.30.1-x86_64-apple-darwin.tar.gz"
      sha256 "a1bb9494cc558e2dfbe35cafbac2004a8e17c66e18476ef17e6505f7fe5e59a9"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
