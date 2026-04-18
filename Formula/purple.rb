class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.43.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.43.2/purple-2.43.2-aarch64-apple-darwin.tar.gz"
      sha256 "bc9c7161403400a1c8e8424b536d1bf2a08d397258408a4617c1b243aa922175"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.43.2/purple-2.43.2-x86_64-apple-darwin.tar.gz"
      sha256 "d8f9e493447a182f3d89eaf53fe89a1c96a58bd4b7a368184756998a4f15e047"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
