class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.29.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.29.0/purple-2.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "a4ea20269c37e372a3861e2dda6a4216b48f6fac52d10cc2bc738ac83ed1bbd0"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.29.0/purple-2.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "3146c9c070b759874b02f793ac5f85dd22b4e8f530d2894141df52134882ef6a"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
