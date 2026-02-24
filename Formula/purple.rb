class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.4.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.4.0/purple-1.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "d0654954abb0f2004d4054f47ecb7c69f47307750a7c43f3b57a1628de03a88c"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.4.0/purple-1.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "6218b863fe72c276d7478edf05bcbf6d311cabfa6ad041a91a7ea4791247fb94"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
