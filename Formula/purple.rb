class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.19.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.19.0/purple-2.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "54776341e6fa4b9757107dcb383e2439842b260f2fcac6e43b708937ad67385d"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.19.0/purple-2.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "0f09f31500d37d299d21311f06a54460678f821cb2b6f66371508de9538888ec"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
