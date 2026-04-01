class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.24.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.24.0/purple-2.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "3c9abb445e0e959a60a6cf22d06e6b265055c778e67db9f0826aa082b07a65c2"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.24.0/purple-2.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "c74c4128cc38d77a2754cb9ac80bd9f58570ace8f5b55215b2e0997213ec141e"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
