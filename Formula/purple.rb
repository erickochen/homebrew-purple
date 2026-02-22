class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.9.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.9.0/purple-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "003cd38c1f863f45b49969b3b843f1484b8f79e59de6b5e603d1bf11f89f0856"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.9.0/purple-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "c672dab74c0801d806b5e3ce621464f9c7e34edd7ce4355d3b7b0c03aa21418a"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
