class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.14.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.14.2/purple-1.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "72b1bfc0dc4865b2c71aabe2f56eabe95abafc4eab7f51dd2ae56cb5874cfbca"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.14.2/purple-1.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "918a49f0caca9587c32a58c1d1d23304535e2bd8af77ddfabb622c4175261445"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
