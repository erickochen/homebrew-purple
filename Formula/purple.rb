class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "2.42.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.42.0/purple-2.42.0-aarch64-apple-darwin.tar.gz"
      sha256 "26e38f6a2d2ba96dc9f34c6a64834121f4b1a844a9e8c2721a64656bbe0e9e0c"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.42.0/purple-2.42.0-x86_64-apple-darwin.tar.gz"
      sha256 "07af4f44c91c62082e6fd8e7229f8d6a5aa700c1aabbf751f867fd720593e278"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
