class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.4.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.4.1/purple-1.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "4d3e282616d1284e08c631f0d6cf30947857b7cad9ae65496b90022c28a60aa0"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.4.1/purple-1.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "c4e608f4721a412f11554407e20f2b01314ca973658511d96a1a53e33397c3fb"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
