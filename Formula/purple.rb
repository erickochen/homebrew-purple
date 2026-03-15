class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.0.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.0.0/purple-2.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "7ce2e94650fba413e49a93bbc057bc0c9e2043095ffc14d6fc8a5288c4be184b"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.0.0/purple-2.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "53c819ba8b314fa4d158dd36f9cd511573c134c80c4d38753fa9b72e4fd043f1"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
