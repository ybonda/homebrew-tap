class Memo < Formula
  desc "Persistent memory layer with semantic search for AI coding agents"
  homepage "https://github.com/ybonda/memo"
  version "0.1.0-rc.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ybonda/memo/releases/download/v0.1.0-rc.1/memo_0.1.0-rc.1_darwin_arm64.tar.gz"
      sha256 "9fb1ed5c190a9fd7ac350b116ffbc987d0c5ba5a06774edcfc64a94c0f1da6dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ybonda/memo/releases/download/v0.1.0-rc.1/memo_0.1.0-rc.1_linux_arm64.tar.gz"
      sha256 "a6574c17f42297fd280b8fc4e09844d487f181b7856b03fad90f1634500b1447"
    end
    on_intel do
      url "https://github.com/ybonda/memo/releases/download/v0.1.0-rc.1/memo_0.1.0-rc.1_linux_amd64.tar.gz"
      sha256 "ad6bd5564a3e92b31950e851bd71e27fee4e1d633ce77b0d070baab89792fb6c"
    end
  end

  def install
    bin.install "memo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/memo --version")
  end
end
