class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.57.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.57.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "4ada7bea15edafc996223fd5d222ded37f8f4a961ae1b6d9cb73df346b3eb398"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.57.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "25700f4fabbfe57f9d50025eee554d41b2e4322d8b3e91b25d026656855005af"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
