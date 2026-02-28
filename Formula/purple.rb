class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.5.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.5.0/purple-1.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "6c4bf143daa9ec50336603c4965a6152cf00fc9fe2ab18bf53e95991d27dfd04"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.5.0/purple-1.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "6d75ff6f5379438e5039c2398e3649c832c05da0bd03ec0fb633ae0ea752dd91"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
