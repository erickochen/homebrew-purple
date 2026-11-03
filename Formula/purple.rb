class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.34.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.34.1/purple-3.34.1-aarch64-apple-darwin.tar.gz"
      sha256 "c9726a488f8eb3991e8afbc42fc87d8af73624feb08ef93027433b3964447fb0"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.34.1/purple-3.34.1-x86_64-apple-darwin.tar.gz"
      sha256 "0d88c14c22902c5989c76486d8229ae0ca77aa6ffd3759017352dc9e9c532c2a"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
