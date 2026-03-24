class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.8.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "05f175ec7586452b084ff6d0b7283f71c402643da915463355a760d02fe9ae99"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.8.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "f50172de1d75cd2ba7e2468bcd8d0822b45d1e70c691902ca2ae4bb8c9f4bc83"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
