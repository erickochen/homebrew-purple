class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.10.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.10.0/purple-2.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "bb6cc8322bb0283323c8049f565ba9457b76bd002b8d02925a6039230918c778"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.10.0/purple-2.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "a9b0e1f628d43a2655e93aac5d4941feab1514e495eaeea23b8e5e09fbaee6b7"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
