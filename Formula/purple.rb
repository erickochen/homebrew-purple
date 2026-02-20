class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.3.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.3.0/purple-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "562d2f49c8de67ac395ef3982434fc4e1916ba85ae6271bf8f46a29b27bc9bf8"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.3.0/purple-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "5998f83679c256acd412421ed369b1d3f4275041b9171f41e78bbf5cc0701e91"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
