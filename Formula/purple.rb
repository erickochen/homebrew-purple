class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.36.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.36.1/purple-2.36.1-aarch64-apple-darwin.tar.gz"
      sha256 "ec3c2bee59df9cedcf370031b9d41b3669b090fa59c24bed9df5a12935e5ef72"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.36.1/purple-2.36.1-x86_64-apple-darwin.tar.gz"
      sha256 "8c7f3ffcdf804fcc4826f5ddb0216afe8a348023caf4d7a1eab6db3ff8aa5d37"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
