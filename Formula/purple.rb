class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.29.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.29.1/purple-3.29.1-aarch64-apple-darwin.tar.gz"
      sha256 "7f44cd87a8f2a8176f5f414c15d3f84aa5cbba4ccf1e8024ae62afbd02bc26c4"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.29.1/purple-3.29.1-x86_64-apple-darwin.tar.gz"
      sha256 "03fc8ac5dcd52e0a811789c71c308040c083d32ab1aeaa94d28f89b9c8811744"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
