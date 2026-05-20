class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.6"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.6/purple-3.15.6-aarch64-apple-darwin.tar.gz"
      sha256 "cfb84584e80eb3a72154b51b0ca648a6f39c1c9396f8dbce3299540a468654df"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.6/purple-3.15.6-x86_64-apple-darwin.tar.gz"
      sha256 "8c8edcbc54030d1d11e798c775481cf57394732b0ae76ce411c63abd7ed50115"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
