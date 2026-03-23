class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "2.8.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.8.1/purple-2.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "ccd9528728fcbd533d852f2222858bc98ee6e90639f300a7a68a33dff02f0cde"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.8.1/purple-2.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "b8da5dd3c85d04c517721eac1be7778bc742db074bf7a2929117f76459c296df"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
