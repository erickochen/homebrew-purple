class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.25.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.25.0/purple-2.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "f09ec251f90bb47f5e56caa4000cb211db2b97efc5720d9d9bab4ad7d0f4985a"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.25.0/purple-2.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "f25af8e6681f116d189132b7e7aaca875294d5bb1a9d8c458444a85a09a0ffd6"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
