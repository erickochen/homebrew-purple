class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.3.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.3.0/purple-3.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "fcf5a133e38afa5f7d320d38196e324d8e7fee062a327f725cb8799e558b035d"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.3.0/purple-3.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "8893ea01e765385dd9f763b64d9a6bb60bcb87ebaff5df1ac8ae8347af33a518"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
