class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.15"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.15/purple-3.15.15-aarch64-apple-darwin.tar.gz"
      sha256 "b11525a2fdcadc05e88f44cfa38a4b5218472ff8529835fb13253e752a5eac60"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.15/purple-3.15.15-x86_64-apple-darwin.tar.gz"
      sha256 "aa826b71b3bc535177c6371f5520a2beeac55db4676f2c9fafd87c62171779d2"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
