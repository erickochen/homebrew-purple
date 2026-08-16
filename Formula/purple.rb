class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.25.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.25.0/purple-3.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "69d99c36cc4af372d7e6e562b5329d5e617e7f629907dfb81a83b1474e300c9d"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.25.0/purple-3.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "955318d225a9edbf6165f0a52b8ac1232d3c3b5e37691a4b5b95a0b9397047f8"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
