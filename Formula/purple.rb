class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.27.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.27.2/purple-2.27.2-aarch64-apple-darwin.tar.gz"
      sha256 "a8f103298c9adb5e25ad50b6d0527796a7ca3640f369e317d5dc9f316e046763"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.27.2/purple-2.27.2-x86_64-apple-darwin.tar.gz"
      sha256 "318c6c1e0c7f3b2b0f0f1f8bc98dca5190411c948c742a98630cecd0f18637a9"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
