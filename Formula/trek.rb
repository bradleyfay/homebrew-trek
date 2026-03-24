class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.21.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "d742ff8eb389c9e53b841955fb9dcd974e40e4cc2298c141f8bbefd33a2d31e4"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.21.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "57483ad9c3054db302927ef8947c9925a386d78e1fbc7e61a64e7177b87a82d1"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
