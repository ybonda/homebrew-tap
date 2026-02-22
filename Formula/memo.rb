class Memo < Formula
  desc "Persistent memory layer with semantic search for AI coding agents"
  homepage "https://github.com/ybonda/memo"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ybonda/memo/releases/download/v0.1.0/memo_0.1.0_darwin_arm64.tar.gz"
      sha256 "b60984c4420d6b6494b9041973d1da16e5cae64b4ffc21bee90d4e05502091c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ybonda/memo/releases/download/v0.1.0/memo_0.1.0_linux_arm64.tar.gz"
      sha256 "933d76d35b99e79a29489f4927e4a3032145a25f7123dec4300388ccc480f72d"
    end
    on_intel do
      url "https://github.com/ybonda/memo/releases/download/v0.1.0/memo_0.1.0_linux_amd64.tar.gz"
      sha256 "06b6224f3255552ca7eee80b56b3e3889063aa9e1d4c69c0dc6cdf89f9671d28"
    end
  end

  def install
    bin.install "memo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/memo --version")
  end
end
