class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.10.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.10.0/purple-3.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "b918cdfe23d57fad0c14fdea0f7fbe150481ac2370c83d6debf1d4ca17543b80"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.10.0/purple-3.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "3ba0565b464212a4ab861975d2ddbc1aee219d97016db7e36462324379a21d92"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
