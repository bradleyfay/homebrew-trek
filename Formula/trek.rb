class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.43.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.43.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "d4ac130198aa70190c059ddcbc24641951b3c0d4082ddac7e764aa6fffbb6880"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.43.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "8a3559c4cebda75f20733c1473e5fd9f7a9e9e78203839e090f8dc67a875feda"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
