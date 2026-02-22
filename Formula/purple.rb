class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.10.3"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.10.3/purple-0.10.3-aarch64-apple-darwin.tar.gz"
      sha256 "63034cdd29d984da7fa6ac8ec7194e64531f99abedda52b1e74f210aeb892691"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.10.3/purple-0.10.3-x86_64-apple-darwin.tar.gz"
      sha256 "976aea950a7a12c51d9f15b98948d2db43fa5f10cc9a9d54091b397f7cecc97e"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
