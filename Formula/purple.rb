class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.8"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.8/purple-3.15.8-aarch64-apple-darwin.tar.gz"
      sha256 "0d3d6cc5d8d5474fcb7e7a206841846c13cb95744be62d50ecf17e545e6cb448"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.8/purple-3.15.8-x86_64-apple-darwin.tar.gz"
      sha256 "f95bafc9b5f57d6d3263d7942883036efda965ac867318742597d9a4e2803c37"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
