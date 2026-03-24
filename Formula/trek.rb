class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.16.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "7325d034654efc099b83ec23db0b1aedc0225a5bcf20f63e52591690d4bec5f5"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.16.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "4db31ba8688d867fdc376d595f187ce15a0591b62a5c180d531eb4ef5781348c"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
