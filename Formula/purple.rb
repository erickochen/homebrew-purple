class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.11.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.11.0/purple-3.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "10f11045ec16414c75fce5e2e9c8f7f66601a5f81289b6b40677a5e9ce3f2859"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.11.0/purple-3.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "8ebea790914ef35b83cf4d77a414e1578f44e5c562db4999d5682a25c321b3d0"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
