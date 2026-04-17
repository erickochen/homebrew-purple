class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.42.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.42.1/purple-2.42.1-aarch64-apple-darwin.tar.gz"
      sha256 "dfa0ac0c3f31adf98ac64b5c25aac447392eac5a6ec7ebbfe18cd121bca3ae9a"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.42.1/purple-2.42.1-x86_64-apple-darwin.tar.gz"
      sha256 "5fafa5ce91b7f123a5b51d7e4f9db551355fffd3e340c53e6b22ee519f02e442"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
