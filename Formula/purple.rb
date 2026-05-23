class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.14"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.14/purple-3.15.14-aarch64-apple-darwin.tar.gz"
      sha256 "ba45e77d73b038ac73f731aaebbd800b668ac20cf6eef1a4d38191927f0ee8cb"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.14/purple-3.15.14-x86_64-apple-darwin.tar.gz"
      sha256 "dd117ae876ad42988dc69cc926b09b8d7cc806575c61926b719891d387eb2e53"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
