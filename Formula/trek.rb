class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.11.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "94fc4c7555d7c4596ae7071d3ea586ed8e146e96a64d9e73cbb56d5ac11b4133"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.11.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "dc1ea7e6026c386d579605911d2d6353b541b470b4d0a22a2ded59734d978816"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
