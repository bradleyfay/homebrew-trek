class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.61.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.61.3/trek-aarch64-apple-darwin.tar.gz"
      sha256 "867d34b87c98f3ad7d8cc2480e4d698e4879727af51d43b0605c72f49e78241c"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.61.3/trek-x86_64-apple-darwin.tar.gz"
      sha256 "c5c5e355b20e96ffc7e447205022c5ffa1bb3cf618243dd03135a5e4d31e0db8"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
