class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.4.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.4.0/purple-3.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "10f435879e07e37d0133075d5524dddb2b1c04e1b1211612e19987dbf0820184"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.4.0/purple-3.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "be2bb2588f57d0377bb879482e673474a978a737501f5dcf695c101b68135c34"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
