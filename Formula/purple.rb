class Purple < Formula
  desc "Terminal SSH client with file transfer and cloud sync"
  homepage "https://github.com/erickochen/purple"
  version "2.14.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v2.14.2/purple-2.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "f55379bff4e059410edb2b063574961d2ed4d429d49f4f9f6c043aafeedb1544"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v2.14.2/purple-2.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "c141ee5a9ce8f34c3e2bbe406ed81c26f9f618a2c66112ab2efe3611bccd4239"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
