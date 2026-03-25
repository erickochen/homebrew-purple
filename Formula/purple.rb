class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.11.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.11.0/purple-2.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "812344e3333e7c0408c3bf87ab7a87936e68dae1038e672ada86bb0f35d1567e"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.11.0/purple-2.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "59a06996f7d831dee09b3dc251094bcf20da0baedf42102c19d0257f836b10b7"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
