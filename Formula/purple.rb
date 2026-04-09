class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.31.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.31.0/purple-2.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "1f9767e8ef91fc686d1dd6ebbf3d2e4145f008cc41eb0d72e3e026c3de7ddbba"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.31.0/purple-2.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "f5716dd82da38d618f1c76dac976b15a988569b24d4ea1cc247293a5c54e4088"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
