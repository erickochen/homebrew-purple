class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.14.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.14.0/purple-2.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "bf37168713ba1713417bcda424c3e6b34974af0bd128315af6f1bd75b4600ab9"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.14.0/purple-2.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "e2f13824f3b5143e0552ea897df18114e2d054b6123f2a0ba811a7d420f2b414"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
