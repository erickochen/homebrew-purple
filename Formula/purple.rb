class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.28.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.28.2/purple-1.28.2-aarch64-apple-darwin.tar.gz"
      sha256 "dcc5c5d6cc625542bfc62bdb1ccd13a533a59bf390d2ac94a66a7da43f119fd2"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.28.2/purple-1.28.2-x86_64-apple-darwin.tar.gz"
      sha256 "117fe20d1484cf49cae8901298652fbf21b83e1a591d11f00a6719f804b8360f"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
