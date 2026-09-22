class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.29.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.29.2/purple-3.29.2-aarch64-apple-darwin.tar.gz"
      sha256 "8b474a9e0136302972f6b07e52058bfce6460c54ae9e6248cd85bb9fce033327"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.29.2/purple-3.29.2-x86_64-apple-darwin.tar.gz"
      sha256 "0f0eb75c2ea9bb6e304c15739a41f24bc585c3ece71e71acef1ce2572d6a26d8"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
