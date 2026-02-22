class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.0.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.0.1/purple-1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "f0d27d4ff7ad2487db62df9dd477c6ba9e694e49999bb1ee29c1abfc0cfa7e66"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.0.1/purple-1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "efca3570cf424d41b3fc09fb4dd3cb922c7566c8c6a7ca18068cf6780e018058"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
