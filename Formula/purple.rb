class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.16.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.16.0/purple-2.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "303217e5b1982ba8706f74ce93fc035d13ac93d8a31e3c14f0d006cff2cb23fa"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.16.0/purple-2.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "d56d0e10c1d3ce57f0ac1d036b4e21eabdc3d4d453f8254c0ed4db0016968fda"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
