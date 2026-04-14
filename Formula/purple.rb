class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.39.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.39.0/purple-2.39.0-aarch64-apple-darwin.tar.gz"
      sha256 "f91781cdb2e09c856528dd3de7039af461dbb809d8bc022d5894176df270c9b6"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.39.0/purple-2.39.0-x86_64-apple-darwin.tar.gz"
      sha256 "84809c107867740f47ada3fc6fbc553f8b9f3522b73e61b3015d80d71617c5a5"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
