class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.27.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.27.0/purple-3.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "193578b9458cdd9165a99fa540655f6184e36e1f7eace84cc0773d36c8087ff8"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.27.0/purple-3.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "2f428e7cbbe233e33850a6a4d6ae176cf448a65b7d78c60e781e2ed41a5ccf40"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
