class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.14.5"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.14.5/purple-3.14.5-aarch64-apple-darwin.tar.gz"
      sha256 "049d0abf81e8ffde6d2b6a5956c53e26b209e8ab6e9ff9ddf8e11401da19a569"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.14.5/purple-3.14.5-x86_64-apple-darwin.tar.gz"
      sha256 "57a36809a998feaaf76b91328de4998ce2a2c00b583fcb117f52ccdf0eb70518"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
