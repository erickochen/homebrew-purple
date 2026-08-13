class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.24.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.24.0/purple-3.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "4dd1afa70e099239669afd50bc1bf2574e2b5658713fbb749c41beaa91db91f4"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.24.0/purple-3.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "181ea3667de3f5bbbc1b4e888c979b9a30b0a26341d1db0c1a20b3f10c5af523"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
