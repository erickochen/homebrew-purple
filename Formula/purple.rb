class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.33.4"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.33.4/purple-2.33.4-aarch64-apple-darwin.tar.gz"
      sha256 "aec4076f7148ccb2eca5e4f812155277bc8773c8f8f5a978b63e22b85bb8a27b"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.33.4/purple-2.33.4-x86_64-apple-darwin.tar.gz"
      sha256 "78c0bffc1eaf48fcfd6cb3f3061551384c1205caa8ce045c27d8918269872418"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
