class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.17.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.17.0/purple-2.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "ed7e815964571dec3a1bbc06f2474d4b1762777677a90e45cb78c83590fffe0e"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.17.0/purple-2.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "bccb7079eca3242c5716e9ff038bf70a70734a7628ef3cedff1a5db824399848"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
