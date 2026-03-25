class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.11.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.11.1/purple-2.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "357984a19c160a23c8af72d5081f31c32f23d23bb711d2365597e7d53eebfc69"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.11.1/purple-2.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "a4b40323121a8f922086a04714783d1416dee9fd30b54fda7f9b5f00fe2e6e69"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
