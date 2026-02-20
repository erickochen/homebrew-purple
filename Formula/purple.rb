class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.6.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.6.0/purple-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "6f2b6b88e7d0af3edbfbfbd22cfb4d2558633a7ed361639a17a91717ac9dc744"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.6.0/purple-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "e117f0c787dc41add7116667765acdfc78a5108c578d96ac97ea6c236d134f9e"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
