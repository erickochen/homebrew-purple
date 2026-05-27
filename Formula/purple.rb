class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.18.6"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.18.6/purple-3.18.6-aarch64-apple-darwin.tar.gz"
      sha256 "b0637e974a6602491151d1ebc78ba0bdd0a13ab1caf0c128fb5d7549e6372ccb"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.18.6/purple-3.18.6-x86_64-apple-darwin.tar.gz"
      sha256 "993ce6d3472ff83b1443633b7304133b6fb65d93b2105286749e9448d02511a9"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
