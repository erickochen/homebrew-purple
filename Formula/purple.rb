class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.6.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.6.1/purple-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "4ab4afbd2caef095dad623c50db75ceb075a06ca1561ad20051be2eacf3ed69c"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.6.1/purple-0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "dc6f17461caacfd5ff752c614436f4040265bbebedcf27d7d3d9abdd6e36c523"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
