class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.45.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.45.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "6792f77752dfade3bface0b796ed6e2d382a6dc04fda6dffe21a21cc5a1e139d"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.45.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "a311a1c006bf075245d3f1e96a17a7b3c8749a54e5c19a2d0b31b904743e3147"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
