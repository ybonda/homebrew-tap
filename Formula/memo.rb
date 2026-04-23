class Memo < Formula
  desc "Persistent memory layer with semantic search for AI coding agents"
  homepage "https://github.com/ybonda/memo"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ybonda/memo/releases/download/v0.3.0/memo_0.3.0_darwin_arm64.tar.gz"
      sha256 "250a37f1c30e7b19a8a5107da99476c8e3d98a8ccae948c7a4ea0f252cbf57a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ybonda/memo/releases/download/v0.3.0/memo_0.3.0_linux_arm64.tar.gz"
      sha256 "c24e81ab6546758e51f49cb945021631cacc8a5126ca89270d7818631602609b"
    end
    on_intel do
      url "https://github.com/ybonda/memo/releases/download/v0.3.0/memo_0.3.0_linux_amd64.tar.gz"
      sha256 "b46bc59deb143506fba9afce9076359ac70c4e4be3fdf557a048681051e02865"
    end
  end

  def install
    bin.install "memo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/memo --version")
  end
end
