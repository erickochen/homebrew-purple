class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.0/purple-3.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "49f0f152735559dc996ffa3d6291026f1162558a244aef59af1049d5266bc4ec"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.0/purple-3.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "bacc6d7216fa2fc3d2d7703fa5dcb2379d5486a997c744f9b4f34efa51f24c72"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
