class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.5.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.5.0/purple-3.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "df7d27b628fd20506279d82b584ebfadb54248f87591d9a220792c7ae765f5c4"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.5.0/purple-3.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "782bb21849d7d974717de7b1c119018a9e4b066a9798cd1cbe985ceacf355f39"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
