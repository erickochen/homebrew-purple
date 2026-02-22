class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.10.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.10.1/purple-0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "f21bcf009b46ae52bc142abc41595c6b841e6dc205c8b2cdce538544a7273dea"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.10.1/purple-0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "ee1290049e6107dde800ebaccffadf1901dd14bbfe23c133f1e1467208140960"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
