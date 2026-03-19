class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.6.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.6.0/purple-2.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "11017644f4d6c6dd8448a893c497fbcb4aa08c29c9ee50dd0ddd5ae7c7fb1161"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.6.0/purple-2.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "f94014ffe68e098057e0154c777fe0bbcd8fc80ba238877edc0b1aee14489115"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
