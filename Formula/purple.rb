class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.13.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.13.0/purple-3.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "f0f494100234f22071e46d46caceb9de316940a89247df955633a50556189998"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.13.0/purple-3.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "c74ade25ebf015ea6ba961bbe573dbd6abf0c755400ef4e37ba4eae142afe92d"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
