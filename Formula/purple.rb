class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.13.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.13.1/purple-3.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "888528095d431af539c99a46cda69e17259009d725c18b0a6151c787353cd042"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.13.1/purple-3.13.1-x86_64-apple-darwin.tar.gz"
      sha256 "18058fe44ef327c0712f7bfec9878118399e3906f2c3fb920375a78ffe8fd7a8"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
