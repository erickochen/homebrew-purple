class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.29.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.29.0/purple-3.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "666ee21bf1a050f216204d805513cbb3929dd9e26858786f6ca8af6415d3a4db"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.29.0/purple-3.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "79bd619592d54d42dea082d11bb66574ecb5e70a2d36864a5eaa9d9052b7a1f9"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
