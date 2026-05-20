class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.5"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.5/purple-3.15.5-aarch64-apple-darwin.tar.gz"
      sha256 "c08aa9025f3a70eae386991cc3098e24dbefbea25e0323c0737a015abd0701aa"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.5/purple-3.15.5-x86_64-apple-darwin.tar.gz"
      sha256 "d6c4cf482a8d1740a0ef13e4ce0351d4b77ceb4cb83601719367c3f94c992d54"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
