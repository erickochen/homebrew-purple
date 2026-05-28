class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.20.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.20.0/purple-3.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "daa69c7e6070572b2aa741acd57ff3b4e0df25efc7d0a3482d0cc50dbd54b88e"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.20.0/purple-3.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "096c623b949e264bae45a6c84da9cd34a226fe3ec95d77dff9b92f11b08b9ce6"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
