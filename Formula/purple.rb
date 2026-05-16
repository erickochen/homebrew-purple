class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.14.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.14.0/purple-3.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "615d1a0d0caab86f74516397079018a57b7a70f26687620eaf25d43dcea6f5d1"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.14.0/purple-3.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "83e8436ca115a259192dd7e18cb310a3cef2fcc1fcecf1fe7dc34c0296215c01"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
