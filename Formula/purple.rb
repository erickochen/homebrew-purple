class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.43.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.43.1/purple-2.43.1-aarch64-apple-darwin.tar.gz"
      sha256 "db04d18a57ea609953b15679e833cfad080a8589a7b81470590dd044df94a438"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.43.1/purple-2.43.1-x86_64-apple-darwin.tar.gz"
      sha256 "efd73a96b93d3131702dd540604ca96e07363c36a64493c1280214858bd22a3c"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
