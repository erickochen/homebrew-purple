class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.8.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.8.0/purple-1.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "69a59e137a97b56efa316e14993faa8f7d1e0e9ef1659a2af9fdcd58e2a425e5"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.8.0/purple-1.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "8ed026b64863e5af4976a0faaee01dea3023e92ccf9c4f579e7e822563db7336"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
