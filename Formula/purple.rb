class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.34.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.34.2/purple-3.34.2-aarch64-apple-darwin.tar.gz"
      sha256 "672da9425d6a4fcc8455f627e3295650cb2194f2913f86cb20a00ead59ad2549"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.34.2/purple-3.34.2-x86_64-apple-darwin.tar.gz"
      sha256 "55ed123ad9845ca501f9d0e55a0484c313368396298ab98e1b78a98c5b143c54"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
