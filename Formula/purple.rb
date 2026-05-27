class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.18.5"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.18.5/purple-3.18.5-aarch64-apple-darwin.tar.gz"
      sha256 "149cddafe5af7b08f7040111762066ec28dd15fe0d411e4ae5470479bdfa56c7"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.18.5/purple-3.18.5-x86_64-apple-darwin.tar.gz"
      sha256 "9b3e514ad9727daa7638965f90753de88ff5f5aa5ffa5e56d9193114ad3c7341"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
