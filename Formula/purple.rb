class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.0.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.0.0/purple-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "2dabdcda6e47a66dc95eb1ecfbe0324e3f01ea35c755360fec4da6ac61070514"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.0.0/purple-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "2de9ec69cf27c6e6aa028babb3593ca258628f4cb19dee4ecf76c633e7f81e69"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
