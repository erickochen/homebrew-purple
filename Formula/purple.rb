class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.14.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.14.1/purple-3.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "01ab541a89a0219833250ba20adb261232df5c287afb6345a35cf946e5ffab8d"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.14.1/purple-3.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "dcacd03fc7d2c64c56f94cc4cd2bce4e2d1d56074536bce269fbe18a7acbcd53"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
