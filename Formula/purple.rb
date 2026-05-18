class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.14.4"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.14.4/purple-3.14.4-aarch64-apple-darwin.tar.gz"
      sha256 "faee46ad49debd5b8453de9b148dec8bce3c683ab759c4d79ca0399ec79b9ae2"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.14.4/purple-3.14.4-x86_64-apple-darwin.tar.gz"
      sha256 "264d4661b4e7d981c33aacb504b07471bd5bf23bcdbd44502672407ca46ad111"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
