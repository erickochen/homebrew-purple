class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.26.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.26.0/purple-2.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "1e96139784733bfbfc324a8c466f41ef0fad672641953e4d1de633cf8dd08268"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.26.0/purple-2.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "f78a46b5da01d73802953a6d05bfd68950c95174f86d2a87e0a4accfb3277b08"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
