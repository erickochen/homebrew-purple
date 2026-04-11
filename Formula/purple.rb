class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.33.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.33.1/purple-2.33.1-aarch64-apple-darwin.tar.gz"
      sha256 "0a721cc39bc6b8b284786778dc349e8eeb5c750ac3de68e4441b34b68aa6f731"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.33.1/purple-2.33.1-x86_64-apple-darwin.tar.gz"
      sha256 "236afdaf0f78cfb5ddc0e754208cb81478c97db935a57cbeaa2303843de456f2"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
