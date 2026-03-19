class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.6.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.6.0/purple-2.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "1fa13948d1b69f0e98996852eda96c13b530a83fbbe4d95b6195cc02f282ec3e"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.6.0/purple-2.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "1513e783c1420d63ef0019718465ccf527d9ebb6751e9b5c57ad7112b79f16aa"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
