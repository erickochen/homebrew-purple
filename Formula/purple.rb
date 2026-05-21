class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.9"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.9/purple-3.15.9-aarch64-apple-darwin.tar.gz"
      sha256 "ed184a92fb1e9758d290f41e5ba48dcc18eabeead985183a239ffaeedab8621f"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.9/purple-3.15.9-x86_64-apple-darwin.tar.gz"
      sha256 "b7f7a1c87db906b0b28c192d227f1d225f026c0d59fb1b47dc64cc2c62970f89"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
