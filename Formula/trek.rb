class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.4.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "c5425e552a0202e272dea3c6a936aaae532b99e17749f531fe07924c36030084"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.4.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "faaa22efe9367d1dc1bed582c525aeba53c1eca0574311c8546869bd67cdeeff"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
