class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.5.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "d4d877679f83b392d8f487cc96992116a3e600abaa48e566d69fd4397e35996b"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.5.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "f3a1e291d06e97b135941527bae317e1eaa74aa8ce22c5a446ad94b1bf512981"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
