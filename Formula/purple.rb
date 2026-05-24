class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.18.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.18.0/purple-3.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "d2b6519e0d2778818af755f5a1d65d1d09b754c5be30ab426be2440946334099"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.18.0/purple-3.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "0493b8621691b225a5731727a1777d02f58ed5ba7b8eb04f95982e248d6ccf23"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
