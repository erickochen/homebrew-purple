class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.18.3"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.18.3/purple-3.18.3-aarch64-apple-darwin.tar.gz"
      sha256 "f885ded3035a52e148b8c7aba5b9c81a0e6c6003282ccd22e236d11cf20faef2"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.18.3/purple-3.18.3-x86_64-apple-darwin.tar.gz"
      sha256 "3d3bbb5fa51731af2d972e099ed5149bba4e3a8c7312737e2ed121947c64d9e1"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
