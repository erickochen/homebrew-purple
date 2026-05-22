class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.13"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.13/purple-3.15.13-aarch64-apple-darwin.tar.gz"
      sha256 "9cb03294bbd80fad2e87f3b98829b2d4fe617ede9cf65ea40bc72358baddf501"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.13/purple-3.15.13-x86_64-apple-darwin.tar.gz"
      sha256 "fa83aabf7cf0447fc5e483b2390a10ba135c396637ae27f466247da8cfd62068"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
