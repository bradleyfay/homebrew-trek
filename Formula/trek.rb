class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.53.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.53.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "dd80d9467d1d3150fc5b904910a2035c64fc173a5788adbbe4d69f625ccd0d23"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.53.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "9ff96f3d8273dafec7c7ffee44baad6d2fef864e5194866dac364da657487b2f"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
