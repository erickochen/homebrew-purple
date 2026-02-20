class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.4.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.4.1/purple-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "197c9568043484a500aebe2761fed7ef49d8ecc0b281db10567933ca42ac2909"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.4.1/purple-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "91d9273968df52394b6d85c9429bb36aab55c758b836b20db79c42b003ed3e10"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
