class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.23.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.23.0/purple-3.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "8573dc2c2fd3128811604ea5b51ca4e7bad4b52d894d81289654a9e90a9dd421"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.23.0/purple-3.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "15bf60447b56bed13d34eabca556048da428bcc88961e743dc6f168438ac6671"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
