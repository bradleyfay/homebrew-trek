class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.60.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.60.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "253b5a2d2aa03cdef7b6f8e4fcf4f911d0c01d27092a0acce10f0da60091d18e"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.60.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "dc222fa4fe49b0749a1f2478430c9d0b7d50303533e0cf52188dc09cf0f682a2"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
