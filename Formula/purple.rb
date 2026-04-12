class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.33.3"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.33.3/purple-2.33.3-aarch64-apple-darwin.tar.gz"
      sha256 "0d5d28d0b4273e6ea111975d8ab477102c10e766e03beb31a187039a955ee85c"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.33.3/purple-2.33.3-x86_64-apple-darwin.tar.gz"
      sha256 "eb89b0d9d7b07268564ad8198a78b8ed44fee0e9f1b6963328bf7b8e9c9fb253"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
