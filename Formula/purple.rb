class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.9.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.9.0/purple-3.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "fcbcd963f02b85183ecf02b4686e9d0bd634440d43baa674c4fc8aede2dbf932"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.9.0/purple-3.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "e29b87d097186505f49317d7a0bcbdaca0683c221d02b289eb49bf7567bd465e"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
