class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.22.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.22.1/purple-3.22.1-aarch64-apple-darwin.tar.gz"
      sha256 "9aed657ba9daab5f0b9112145aead1fc86e848ae521f9d154c34d753fd0b10a8"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.22.1/purple-3.22.1-x86_64-apple-darwin.tar.gz"
      sha256 "1d8b4b0601ce228101727f4b1f72795e92c6de16d7db4c68b77947e20b07ee43"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
