class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.22.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.22.0/purple-2.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "2e3dda3a3a5ef2177c7d47317861c26a4bbd73fe9b49f84b274c38fcc000acdf"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.22.0/purple-2.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "557fcc2a2f7d79c31c702ec442a1e7153737cde4d2eb610ef6393892f0297ae5"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
