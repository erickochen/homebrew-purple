class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.7.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.7.0/purple-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "30a211a89ca49715b34f22defc42b25a7e3808b072067a034b088d9e1926a0fb"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.7.0/purple-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "884edba1f4f216100a009a3bf3308af002b180fa702bd31a11e106a57c5ecc08"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
