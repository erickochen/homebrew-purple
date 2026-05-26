class Purple < Formula
  desc "Open-source terminal SSH manager and SSH config editor"
  homepage "https://github.com/erickochen/purple"
  version "3.18.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v3.18.2/purple-3.18.2-aarch64-apple-darwin.tar.gz"
      sha256 "bbf27623456304baec5ea65d7c8a40601aebf56f22224e7c87f6ed01db273f4e"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v3.18.2/purple-3.18.2-x86_64-apple-darwin.tar.gz"
      sha256 "8de97f6aa875ffe0143c928caad2204ce2e7c3c86d5b56c463ad24c151c773b9"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
