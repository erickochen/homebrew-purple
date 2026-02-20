class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "0.5.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v0.5.1/purple-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "0ed60b9ce9eecfb21b9b5ee4fa398f2a9def9a9f54ce242f29162566876fe715"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v0.5.1/purple-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "526c2a9f550edfa4faf41762833e3cdd7f700cff9b57dc94114b61e032863fef"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
