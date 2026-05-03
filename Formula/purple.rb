class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.1.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.1.0/purple-3.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "0338360144207f4643f77760c1e996214a73a31ce11cd53d1d38cd5bb96d2df2"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.1.0/purple-3.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "bc6e70c72d6fad9d69bcd80c4ac25b2128b9a4ecc4ceb276961fd950583a7855"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
