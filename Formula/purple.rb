class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.44.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.44.0/purple-2.44.0-aarch64-apple-darwin.tar.gz"
      sha256 "55a65463bcf5b84db6b621e02242d517b88ca73617fdfdd1624911205cce91c9"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.44.0/purple-2.44.0-x86_64-apple-darwin.tar.gz"
      sha256 "3970942e9952389299cf1659e421f1129d1e0961313ab4e52b120a50905d78f6"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
