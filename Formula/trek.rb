class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.25.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "65bd5a5ac9dd85c5d4a8c4a4af977fe5b808675954d623407ad30ab875536b11"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.25.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "1f6489cb1e1b44aca558e756f55683abaa1aac2bb52c055fcaa24f721f40b50f"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
