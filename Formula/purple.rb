class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.42.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.42.2/purple-2.42.2-aarch64-apple-darwin.tar.gz"
      sha256 "5a17627f71a90ed4ab596088e0c9802fe4adbf674a4cf68ebba3009bc3fc4630"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.42.2/purple-2.42.2-x86_64-apple-darwin.tar.gz"
      sha256 "afe7e12cd21441b8ad427180403549ec3c9622070480f9b0eb08998efc44cb43"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
