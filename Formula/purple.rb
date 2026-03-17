class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.1.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.1.0/purple-2.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "5309449c4b815cfbf44bd4875b7b8df4fec60aa888d1585420ee8c9c263b03f2"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.1.0/purple-2.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "d78f3abec4658b31206239bca57f60c5dce616b87e6e5e4c6582130c67027439"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
