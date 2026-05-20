class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.7"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.7/purple-3.15.7-aarch64-apple-darwin.tar.gz"
      sha256 "01266b9c785d9d4f42966d27eac1db370c024c3bdcd1b0586baecb50e3b88aca"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.7/purple-3.15.7-x86_64-apple-darwin.tar.gz"
      sha256 "b186f396043c0ab4053a26a8760ecb7e2d6254c79c9302b27afd37a400f140c1"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
