class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.35.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.35.0/purple-2.35.0-aarch64-apple-darwin.tar.gz"
      sha256 "ff63fa0b6e2ec86b474cb085b465dcbdf8f562de33d202c33a2c5e6916719cd9"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.35.0/purple-2.35.0-x86_64-apple-darwin.tar.gz"
      sha256 "53a3f06a5c68bc17f27eaf3f6a0d0b5499c482947c51170ea5d8d9ea9dc39f21"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
