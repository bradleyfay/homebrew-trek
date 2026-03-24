class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.50.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.50.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "06c42642e38f660deb7c0ffa923208d26bb2d18e36e17fd89838ae8da130458c"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.50.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "a5b59c4144ba81cde45fe916cc00ce4201180945ae01005cf1cd811aace95df6"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
