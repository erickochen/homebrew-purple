class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.23.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.23.1/purple-1.23.1-aarch64-apple-darwin.tar.gz"
      sha256 "676ca45fb04d2224b3269f4c5f289249f7531ecdd4f663042da4a1e37ac9c710"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.23.1/purple-1.23.1-x86_64-apple-darwin.tar.gz"
      sha256 "3825440e1bceb0449419fe39a0963ea968aabae047276614cc06f3669d0eee3b"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
