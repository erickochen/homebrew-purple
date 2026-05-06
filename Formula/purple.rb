class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.6.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.6.0/purple-3.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "99198e51296acaad5f20961dbf0912b3f3b07cb49ec5bc47bb2a06058b1d1b3d"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.6.0/purple-3.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "c1a5c890542d70dc8554ff927252dbda10387dcbe7d4d884cde611762cbf7e60"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
