class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.5.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.5.0/purple-2.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "696d16069c0645ef34967cc8d0582ad5c83869838432546401c43a524df4aec0"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.5.0/purple-2.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "484a6c3e484ff934b6106b710b2ab73bb19de24635c22659ba18045cccdc598c"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
