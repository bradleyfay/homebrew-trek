class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.56.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.56.1/trek-aarch64-apple-darwin.tar.gz"
      sha256 "8a9c01c3e088788f62f196c713ba3d3cefe772634131ca4701d4c1b188c87d69"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.56.1/trek-x86_64-apple-darwin.tar.gz"
      sha256 "b15e5fd4758175ae2cf844b7a7776b22e86e34443c88aaa0729730289b2994c6"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
