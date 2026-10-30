class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.32.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.32.1/purple-3.32.1-aarch64-apple-darwin.tar.gz"
      sha256 "b605933efdf3131c279ef51e5319c9d8987c608608534232b9e459a90cb5d348"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.32.1/purple-3.32.1-x86_64-apple-darwin.tar.gz"
      sha256 "8d1b2ade925fddde18e8785e338c3e6cb5e14948e8538cbeaca058a6818d0a02"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
