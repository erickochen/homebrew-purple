class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.20.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.20.0/purple-1.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "573584381d5c1e5c643c49c12ab8e621b77443125012006d8fa4b70266c31619"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.20.0/purple-1.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "481d1336d3334b3d76d6e8ede06d5056aa9756511b307472fbd6f23e9e15f5bc"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
