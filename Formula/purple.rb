class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.4.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.4.2/purple-1.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "f414af0055acc696c472b307d7b6246a7cd37db72f22eb2a31e3b56fa13939f5"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.4.2/purple-1.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "757df419d31668d430dc3637e24bd78e6775a39c3d3204aac20882f86bceba8d"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
