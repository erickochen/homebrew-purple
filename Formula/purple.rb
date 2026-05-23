class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.17"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.17/purple-3.15.17-aarch64-apple-darwin.tar.gz"
      sha256 "f503cc1bc33455d33b5320899441d182177e168eb54d4229099f8ad8e2b613a5"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.17/purple-3.15.17-x86_64-apple-darwin.tar.gz"
      sha256 "1ec9e7a907895ebc1773acfd05f9e87700400fc58329121bc73e671ef9293f06"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
