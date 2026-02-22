class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.10.4"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.10.4/purple-0.10.4-aarch64-apple-darwin.tar.gz"
      sha256 "3f27cc8bc8fcfd5dc2c0129df52adbc459efa9a3b6436d58ad35c0a16f957e70"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.10.4/purple-0.10.4-x86_64-apple-darwin.tar.gz"
      sha256 "4a46f26dec5c6b05aadfd745d5dd3d51e3c02facfddb68feed04fd97562e66e0"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
