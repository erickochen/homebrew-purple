class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.12.3"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.12.3/purple-3.12.3-aarch64-apple-darwin.tar.gz"
      sha256 "21b5bb0893befab8713e2fe2a929884e31daed91ecd271d33b256a6b5eb4409d"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.12.3/purple-3.12.3-x86_64-apple-darwin.tar.gz"
      sha256 "259d3937a29837b400e53b1b4eac198d7257ee585066a90a783a6c233307fe51"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
