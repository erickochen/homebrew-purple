class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.16.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.16.0/purple-3.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "c0dd7d4ae4df8f0819f831e17d603aff25f47f02b736e8500a10201d2f126dbc"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.16.0/purple-3.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "d2671697eb4fb003291525aca545ea86010b49e2ec613d314468ed20427d2c52"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
