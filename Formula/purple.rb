class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.9.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.9.1/purple-1.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "809c91701e819ee182e7536b25132315d15c405b5aa4a004760f32242caa9e67"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.9.1/purple-1.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "243c7319f5b19d7cb7b8d3617fc0125b7eac992d4546f6df90112818ebf161cc"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
