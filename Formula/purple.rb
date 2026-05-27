class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.18.4"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.18.4/purple-3.18.4-aarch64-apple-darwin.tar.gz"
      sha256 "e1bb01d4dd61d48ecad8eb8453ff7d18bd7cbeeda8561b98265461ffd483e98f"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.18.4/purple-3.18.4-x86_64-apple-darwin.tar.gz"
      sha256 "630330b801a956f51c16eb75504a6ec3ab30b9c778223b45f45ef8cad9934b65"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
