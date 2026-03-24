class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.15.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "95e04e71f4d58f76710fbe4b4453fa6fff52f5d1bda4e0330855a375a16485d6"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.15.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "79c1892978703473cdb18eb7291656933e21b1e2c505c8e2d59ca1ddace6a3f4"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
