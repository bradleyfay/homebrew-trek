class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.66.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.66.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "804106b6be60e35246a01850667b3d9fcb9e0583e733fa0563be84211d1e1363"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.66.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "579e8de010d25915aec7ba9c305ee62fcce6efb50cb69ac5f42117ca4fd9c9c3"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
