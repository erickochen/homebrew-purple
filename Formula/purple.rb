class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.2.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.2.0/purple-3.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "49449a47af7b7261c0ec4b7369f5a20ac17d277ce9bd31161b0dcded003ad484"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.2.0/purple-3.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "3edc12e61fb6550379b335884e9d63f3f94618a92efb4d39cc33fba4346aad06"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
