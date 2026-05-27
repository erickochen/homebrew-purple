class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.18.7"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.18.7/purple-3.18.7-aarch64-apple-darwin.tar.gz"
      sha256 "414cb3d6ea09427f13f21b76bbc37e5bd662fb62ae514548f0db649a52fc516f"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.18.7/purple-3.18.7-x86_64-apple-darwin.tar.gz"
      sha256 "0b7223d99dd2e4679c1e720b8bbe0bf6be348d14389358c97ebcf328dd693a43"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
