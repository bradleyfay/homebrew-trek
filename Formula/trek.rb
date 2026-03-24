class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.17.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "a741c59cc1796a422979c9b5740bf16cfa415ee8e7fbaa22ec6d7a6937374f27"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.17.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "541dd401b5258da53414834dd7ef86d28097e40f305c6082e4f430c88eb7ddc8"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
