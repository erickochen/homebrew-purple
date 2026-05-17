class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.14.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.14.2/purple-3.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "eacebb35ad7c28287bd8798143f7ef86f32c67b735f4fa2b2e4e4b482c9055fd"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.14.2/purple-3.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "e86e7d7630b3f1c421c9aee4730de7b1fd29d31e72840c71d733cc89b2c2e1bd"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
