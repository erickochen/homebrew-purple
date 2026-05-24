class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.17.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.17.0/purple-3.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "5697cef2e2014aa24c343b8785dbfd634298ed5bc671b948a428f73ff9e5f1c8"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.17.0/purple-3.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "3d546fdbe4f04e0319aa4808ba4dbd56a4eee66d4d78e5e57134c44683f3ea6a"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
