class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.45.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.45.2/purple-2.45.2-aarch64-apple-darwin.tar.gz"
      sha256 "c3a28e5580be4d8e7c777270c6257b6a93950832ce2a5210a0560bb468aa8a11"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.45.2/purple-2.45.2-x86_64-apple-darwin.tar.gz"
      sha256 "620843145084c844655113c5c2dc864d199d72ec1fdf7a9c6caee6116a6907e4"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
