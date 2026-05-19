class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.3"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.3/purple-3.15.3-aarch64-apple-darwin.tar.gz"
      sha256 "d6b546f325505fb15ba72ad1885b0d5a3ee845caf460f51cb5613813305715bd"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.3/purple-3.15.3-x86_64-apple-darwin.tar.gz"
      sha256 "4ef4a4433b01924a6a76ab6ac26c15e8cf3ab1c17e74096f633cd9ae62ae0cf7"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
