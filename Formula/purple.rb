class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.8.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.8.0/purple-3.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "d1bd1bd7aa1df7182e2de540557a5b11d996dba5c3f7505f53c63d4f9ccd2f07"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.8.0/purple-3.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "c0979213ff8a3224d1551cc5055b412835cf9de41060d79b3019d6aa859df6d5"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
