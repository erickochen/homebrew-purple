class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.26.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.26.0/purple-3.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "dcd82d6c9fde2448c175ce68b63a9640ab83c73aef1b9e7cfb00617b43d29049"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.26.0/purple-3.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "df7b5809d5d1f0d6d36be1b52e2042ba531c6bd6cafe2f54e24a28a1e8737197"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
