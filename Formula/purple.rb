class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.26.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.26.1/purple-3.26.1-aarch64-apple-darwin.tar.gz"
      sha256 "8c5001f9ef6e3246edb1db387933149d2874a5cf0d6f201c02901e8288216667"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.26.1/purple-3.26.1-x86_64-apple-darwin.tar.gz"
      sha256 "f5954479c1ea34ca7d9d734f24b93b35c8557f372b12a6c1651ff2c978a76a27"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
