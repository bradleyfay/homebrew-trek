class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.24.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "804225e175c934a001303fdc154d8c6a46da382f5f77c477557578f4e7e80421"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.24.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "6318f36ac4720ccd2c526f32ee4b0a5d1a6698af18035c3944bfaa2c234bce64"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
