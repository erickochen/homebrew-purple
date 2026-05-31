class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.21.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.21.0/purple-3.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "735703d418306ba409705ebb51f48a4d559a4e9c17625f3aa41bf3b59361d541"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.21.0/purple-3.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "bffadb182b22b0e7743269ed26c67363114c74ed028e87352e4ac0cb27421adc"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
