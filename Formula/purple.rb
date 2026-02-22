class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.1.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.1.1/purple-1.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "b375e16a5d25dad2ae1068d067f3be3d3be29e78a0969a370227cdc283a4ffe6"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.1.1/purple-1.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "15753bc105de5760c98e2efdc1bd2daafdbbc64e6aaf24461b3bae98b7e7ce80"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
