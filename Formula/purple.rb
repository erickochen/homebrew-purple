class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.28.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.28.0/purple-3.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "9afb7544dc03e570cd921e6dd9a1456f87c8744ac60a3d444d54d4d1bc28677e"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.28.0/purple-3.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "cb180696c5cc06725046a4f820f59c72351c138b873a09f9e83ff30a57f847f5"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
