class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.34.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "1dc3acbaf45b3b619a27ae87295d86c7465578071ca87f07c3f694015cba5778"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.34.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "72ebbd0c1401851e9158b49fda2b38dec71e9b3d53bb5e876c02ca3bad2b6c4f"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
