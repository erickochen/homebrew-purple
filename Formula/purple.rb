class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.3.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.3.0/purple-1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "64260d06343defe55fe339784cc414c5d60e53796a11b42c221f24eb0df4cf14"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.3.0/purple-1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "773b4e985c1e2111b5fb6c9eadb53bb9ea863c378b20d983020ebe27fffb2e1e"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
