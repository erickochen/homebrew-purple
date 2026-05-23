class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.18"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.18/purple-3.15.18-aarch64-apple-darwin.tar.gz"
      sha256 "941ce652e7b132a7ffe8e59023e3fc816e8b9cbf3f1a71c3576a1a31d00b9aac"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.18/purple-3.15.18-x86_64-apple-darwin.tar.gz"
      sha256 "478f68e4473ef40e07051416ce7c5f67a76bf5f4f99eec6a22a098015bd547b5"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
