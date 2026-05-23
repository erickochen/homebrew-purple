class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.20"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.20/purple-3.15.20-aarch64-apple-darwin.tar.gz"
      sha256 "ba39bef9219d774fad578563e85382f4416f8428613e630210c6899009ccc2c6"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.20/purple-3.15.20-x86_64-apple-darwin.tar.gz"
      sha256 "5e3fea18ee366af48e1a381830556c4df18698e9e6842a5f7c69c10e3dde8819"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
