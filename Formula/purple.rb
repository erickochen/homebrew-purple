class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.16"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.16/purple-3.15.16-aarch64-apple-darwin.tar.gz"
      sha256 "a5eb46f756cf3269063388ba13e940a20500043203fbc63c69cf3e4c0b835217"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.16/purple-3.15.16-x86_64-apple-darwin.tar.gz"
      sha256 "fd82af49415a15d3a365b2ee91bb6e7db7f97c90d41f455a447de02cf747169b"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
