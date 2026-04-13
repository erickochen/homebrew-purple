class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.36.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.36.0/purple-2.36.0-aarch64-apple-darwin.tar.gz"
      sha256 "61201866e251a867607ac2ccd148f8f151203695aeb77449f8161e7824fe4584"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.36.0/purple-2.36.0-x86_64-apple-darwin.tar.gz"
      sha256 "ec9e65c25d2750b9d69459386d50a7e2ffa11bad7ee0741d30bda5624883cadc"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
