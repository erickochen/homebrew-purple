class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.11.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.11.1/purple-0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "f7c590e931eeb3001e7b915682e3bb4414d3eda57492ac25e0c5276cd7668617"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.11.1/purple-0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "8b4d5fde334f771b94f7d7053afe34131903a5bb4d468d83c319955f2f7838c8"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
