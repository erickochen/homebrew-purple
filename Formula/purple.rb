class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.18.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.18.0/purple-1.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "ba4e693e21b348b0f860504e8823b9b35ca072ebaa0684b5a8759fdc244ca273"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.18.0/purple-1.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "a514ce56659827013bf393e8e2d81dc21c83321a004914196807696e5be72474"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
