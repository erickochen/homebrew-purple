class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.41.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.41.1/purple-2.41.1-aarch64-apple-darwin.tar.gz"
      sha256 "1c5e273745ed90602b2dfec152c1f4a4a5f904190bda28b48c7517f89abc26b1"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.41.1/purple-2.41.1-x86_64-apple-darwin.tar.gz"
      sha256 "0c6691fae037749f46fbfa5334dd0006486bbf73911bd39c617d21803bffe145"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
