class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.27.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.27.1/purple-2.27.1-aarch64-apple-darwin.tar.gz"
      sha256 "40714df9866d87481d9620adf160fd86d61fd9c0488162e3a595f02c3c6800e5"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.27.1/purple-2.27.1-x86_64-apple-darwin.tar.gz"
      sha256 "32bca325a506932658d3b1bcec5f135cc2cb75a89e7045834e6859f24cfb5cbd"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
