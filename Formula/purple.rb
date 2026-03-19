class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.7.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.7.1/purple-2.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "4a1e5403285c380607f0c307a619507f920e2eeb5b9350332872efaabba7d3fa"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.7.1/purple-2.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "372119d2ddc7548c62bdee4b0e540bd9d724197786fd4cfa79657ed157a3a52e"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
