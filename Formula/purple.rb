class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.12.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.12.0/purple-3.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "8c22ba2891d841ee9723e0cbb93282ea9b42012a57a7acf523250d3113c8be79"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.12.0/purple-3.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "3726a1511d83d5d441ff8a22b9d4d34ab02d730183c14d7de97f6adcbccc0d0b"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
