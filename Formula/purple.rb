class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.15.11"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.15.11/purple-3.15.11-aarch64-apple-darwin.tar.gz"
      sha256 "0dd2b55e545efecc439abe1a7eb04ea07becf3295a892127ddfaa7412e57b86d"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.15.11/purple-3.15.11-x86_64-apple-darwin.tar.gz"
      sha256 "2743f145e610f3d75791276845da0f402d277b40e0ad229e67fc978980fb4086"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
