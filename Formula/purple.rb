class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.33.5"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.33.5/purple-2.33.5-aarch64-apple-darwin.tar.gz"
      sha256 "ef60fcbf24c16b54f4adcc6a10f3c1d59a7f3038b570e4cdc575f53a81c221fd"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.33.5/purple-2.33.5-x86_64-apple-darwin.tar.gz"
      sha256 "61b3ea519cd92aed059ed9771df5b0b42365894a99b3b8d3eb7a6960c309d5fa"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
