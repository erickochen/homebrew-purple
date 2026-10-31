class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.33.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.33.0/purple-3.33.0-aarch64-apple-darwin.tar.gz"
      sha256 "cfc0a42e136add0897c5d0d8b07d843de50509f8a059617488e7b05235749712"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.33.0/purple-3.33.0-x86_64-apple-darwin.tar.gz"
      sha256 "5015810138119f2c68e4599fcc0e45d8c32d6492b05facb2ad2f4d0d124eb37b"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
