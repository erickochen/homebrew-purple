class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.19.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.19.0/purple-3.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "5f2cf27633b30c513aa7e68bf6b7d903321312283dc5cd9d50747b74c523a34b"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.19.0/purple-3.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "2f528bb90ebd28cbc6517c57f089328ba1f475a2174a5c8b49b72067f46a7933"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
