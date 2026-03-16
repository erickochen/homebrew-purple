class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.0.3"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.0.3/purple-2.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "56d452d1a6e2f7e482bc36c893e51df2ab7565b4ebe260ea8e4922e53c408e27"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.0.3/purple-2.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "0418818da1285d969c3e8bbae1e290f03237ae3d997d8f9e16e77ef260b30609"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
