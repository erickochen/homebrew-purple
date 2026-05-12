class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.12.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.12.2/purple-3.12.2-aarch64-apple-darwin.tar.gz"
      sha256 "5e631795accc87e9ba37b6a4bbc7b50541edc3b4cdfea24f7590fe602f236b49"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.12.2/purple-3.12.2-x86_64-apple-darwin.tar.gz"
      sha256 "bea75679e6c375e7f60051b09a93db31941c70771558d3c8e154143c1875ced8"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
