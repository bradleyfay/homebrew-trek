class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.63.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.63.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "8d54e90016b039544a13831d08aa6380e0a695cb436ea770afcd5e69920da66d"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.63.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "208aac8755bf2db253c57c9229bb2a73ff476578cd9f3d9f3afab1c5d5685c5f"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
