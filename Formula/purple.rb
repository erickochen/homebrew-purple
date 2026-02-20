class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.3.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.3.1/purple-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "4c74e0828565d1dc7e40517df1a66ad7f82bf7ac06647c9309906cc05a74ea24"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.3.1/purple-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "59f7d66a650ab6cad2a8ff144d170fa0d665a49ed02cf9dd4a3292b974d57fe2"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
