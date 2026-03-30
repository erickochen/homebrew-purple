class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.21.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.21.0/purple-2.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "02d1bc970cbca44f1f011bb546b85e304f933fcdd994ec7527ecb641f0eefac1"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.21.0/purple-2.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "5ddf8424a58598fa2a01af144c015f470a7efbfa61f26b9153a0e398bc92738b"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
