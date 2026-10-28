class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.32.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.32.0/purple-3.32.0-aarch64-apple-darwin.tar.gz"
      sha256 "f5a04280bef6f0a050fb410f8b5aedb78ea553f54adc3aa1effddef0c5e96035"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.32.0/purple-3.32.0-x86_64-apple-darwin.tar.gz"
      sha256 "5e982e62b5ef3633f93c91b00e9b9ecbea21c083f33f3d133d30580ae3fa0383"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
