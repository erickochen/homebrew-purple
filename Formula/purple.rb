class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.38.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.38.1/purple-2.38.1-aarch64-apple-darwin.tar.gz"
      sha256 "b9b1905b205d8fe6fc345e31815eaa8f0415dce6886712f822d12da0dfd09a31"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.38.1/purple-2.38.1-x86_64-apple-darwin.tar.gz"
      sha256 "d968dd42f7d4ae941fd69b2c4fa3363d0cc7564597e18845c4c76690cd137a8e"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
