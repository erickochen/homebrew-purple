class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.27.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.27.0/purple-2.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "fb2f25090dd5872c264f424c625fc96ef68b91f5a63bf671eee7de28442991d2"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.27.0/purple-2.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "3217fa1865b383d15a8c4cdd33461ac5e4f9b1526364455e721faac152ea83f2"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
