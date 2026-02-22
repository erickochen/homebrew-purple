class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.8.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.8.0/purple-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "f3f91ee1ba83fc44a6535136573b556236e75904dcb5ad69bbb268b2fd420335"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.8.0/purple-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "7b631820af383d02b4fe3724f5a2202a5363e14030817e06275587e5a4fa2f07"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
