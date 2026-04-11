class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.33.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.33.2/purple-2.33.2-aarch64-apple-darwin.tar.gz"
      sha256 "557531b78fda57c01fa21dfefac07531bfafec8bed6e4b59c7ba326b114be1fb"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.33.2/purple-2.33.2-x86_64-apple-darwin.tar.gz"
      sha256 "d639aff96aad1bfd83b78627f8f6713023b3d0d1cd3f83617f47143fa8b552b8"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
