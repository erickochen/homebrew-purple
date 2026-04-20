class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.45.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.45.1/purple-2.45.1-aarch64-apple-darwin.tar.gz"
      sha256 "ae4500e16de0b769ceab72ea4923d6226bc68600117098563b5383a83d737963"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.45.1/purple-2.45.1-x86_64-apple-darwin.tar.gz"
      sha256 "f5bfa3935250789f3c005ce8a0ed118378a1469d06672924ec5c7953de55e4ca"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
