class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.45.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.45.0/purple-2.45.0-aarch64-apple-darwin.tar.gz"
      sha256 "7276db65b9f55d72d254eded9a68e28c1be3def9218fcb24e31912941d238efc"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.45.0/purple-2.45.0-x86_64-apple-darwin.tar.gz"
      sha256 "954725cea1031a105ff45dc5f1924a5565006cdd4479da74e7c0abbfc8374a6e"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
