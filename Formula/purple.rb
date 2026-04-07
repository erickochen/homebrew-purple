class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.30.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.30.0/purple-2.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "e215ea484acf6da1d92c7fdc6eddd6de7ac785079654ca441f7a8404c7f7f8e1"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.30.0/purple-2.30.0-x86_64-apple-darwin.tar.gz"
      sha256 "4c3a042fe76d120e37eefd1cabeb4f8d1d01624ba2da1f87cebeb140d67d1177"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
