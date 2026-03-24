class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.33.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "3a444ad43cef55cbd4efa83787ad0b331136f3c6c9b94f72ad3da536ccdd4a77"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.33.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "82eb4dfca36e0dfd42b5b28b2fe5e5a3cf434115c381d8e3be3f0be98abae67b"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
