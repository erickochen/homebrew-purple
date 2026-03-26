class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.12.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.12.0/purple-2.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "35d3fd4fcb2de0da8567dff77fdacf1cb7285a42074c1901a9382a82ddaf1ecd"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.12.0/purple-2.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "a2002302993cf41c90220e05e436de8bc0663ccc78c23aab199ec555fbb45242"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
