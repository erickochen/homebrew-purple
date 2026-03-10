class Purple < Formula
  desc "Fast, friendly TUI for managing SSH hosts"
  homepage "https://github.com/erickochen/purple"
  version "1.22.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/erickochen/purple/releases/download/v1.22.0/purple-1.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "ca6ef6ef56f9e45bc5faefcb7435759c76b8a6d8b1e87f043b1087a0f7dc419a"
    end
    on_intel do
      url "https://github.com/erickochen/purple/releases/download/v1.22.0/purple-1.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "34f25f11851363b133618ca8a5f35dd96a3fec4ab57f163f980c7eab8fbd77ba"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
