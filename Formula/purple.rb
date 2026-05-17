class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.14.3"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.14.3/purple-3.14.3-aarch64-apple-darwin.tar.gz"
      sha256 "581846085fa1e549ad69b5dcfeb490cc727c3c93de206b8c2e78d8a80c8593e1"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.14.3/purple-3.14.3-x86_64-apple-darwin.tar.gz"
      sha256 "07c225d0c85526d599cfa45f8fa20ac721221f9f4350bb98b83d4b1d203f2fb2"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
