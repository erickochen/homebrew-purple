class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.34.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.34.0/purple-3.34.0-aarch64-apple-darwin.tar.gz"
      sha256 "7f5d4c065d59ae7c91ab9e15efb50ca018d272567e45343794c6800a6a409465"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.34.0/purple-3.34.0-x86_64-apple-darwin.tar.gz"
      sha256 "a5c5fcd4e61784e0661313664b8a587a359db9a8d5c193194444ea78fdbf7472"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
