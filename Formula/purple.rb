class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.28.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.28.1/purple-1.28.1-aarch64-apple-darwin.tar.gz"
      sha256 "c122bed62d71d65167b0f6c9ab62f996ab01e4dd17ad2f88b0a85678d7d360d8"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.28.1/purple-1.28.1-x86_64-apple-darwin.tar.gz"
      sha256 "5953cc0b85aba922682f8299eba4f2ecef7081d0909e45c1536695e3db804ff6"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
