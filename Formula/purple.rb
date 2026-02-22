class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.11.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.11.0/purple-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "a78b97b102de82d1e3923a317ac42a209916e604bf0d155efefb8f13b7019c74"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.11.0/purple-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "8470511f31673da55066087ca8e36838b3a46d164ec82f69976564f83bc91366"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
