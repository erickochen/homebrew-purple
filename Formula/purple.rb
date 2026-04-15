class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.40.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.40.0/purple-2.40.0-aarch64-apple-darwin.tar.gz"
      sha256 "e3dd8449c0cc5a930788c0d68bb607d47c8c5103f5bb489d5f6cb3ceef035672"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.40.0/purple-2.40.0-x86_64-apple-darwin.tar.gz"
      sha256 "ed74557c7d6f7c3f14b51a806fae3230f14fcd36d53132da0a018197d8d74d3b"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
