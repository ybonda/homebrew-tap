class Memo < Formula
  desc "Persistent memory layer with semantic search for AI coding agents"
  homepage "https://github.com/ybonda/memo"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ybonda/memo/releases/download/v0.2.0/memo_0.2.0_darwin_arm64.tar.gz"
      sha256 "563e2b776035ed40c3d8fbe45e0167d1cd2b0311748d4f6cd1012f024c0cca5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ybonda/memo/releases/download/v0.2.0/memo_0.2.0_linux_arm64.tar.gz"
      sha256 "9d9ea2557a3eee7ac8d3392a7876b89bbec74684cd5d555b27c49ba1665bd4ac"
    end
    on_intel do
      url "https://github.com/ybonda/memo/releases/download/v0.2.0/memo_0.2.0_linux_amd64.tar.gz"
      sha256 "c453ec40e03e5c4ea046cd980da026427fa9e19980edacd9d0df3364ff83b6b2"
    end
  end

  def install
    bin.install "memo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/memo --version")
  end
end
