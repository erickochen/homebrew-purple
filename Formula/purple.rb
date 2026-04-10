class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.32.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.32.0/purple-2.32.0-aarch64-apple-darwin.tar.gz"
      sha256 "b9dd4f68e696ff4e8a2e5e673305bc2e3ffb1ff99651a50ec93ad04c1a249114"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.32.0/purple-2.32.0-x86_64-apple-darwin.tar.gz"
      sha256 "99c186a49dc4bc6f032f9adf30148819665e7d7ae5dfd5b7a4eac4f668c07a77"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
