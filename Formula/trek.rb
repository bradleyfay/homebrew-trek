class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.55.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.55.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "b2ee0f781920607ea91109b6f474901cf008b48aa815f48a7e1abcf13885de4b"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.55.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "14b6970ec56b7bfcc0c6fba0c69110acfe1da7bb1b7ff1ae2ea7ff6c83cb5198"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
