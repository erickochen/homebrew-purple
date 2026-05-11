class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.10.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.10.1/purple-3.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "f5bb27c11f9779f290ea0c67a8af3fc9e7ee44794361004a492221959bafab9b"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.10.1/purple-3.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "a3bc8002bb86c9d079aef1d112a8b36f7edf5f4238e7dc25e8b7039c8d3c2582"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
