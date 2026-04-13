class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.35.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.35.1/purple-2.35.1-aarch64-apple-darwin.tar.gz"
      sha256 "9fb458d4995f34c2e471f2bb781ae1ac933c561342fc905ee416a648e8564382"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.35.1/purple-2.35.1-x86_64-apple-darwin.tar.gz"
      sha256 "3a4f3083dcceb5f4c8b5b91110d1fb28813fa59c9b08a6d233ddfb2cdc3c5c0f"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
