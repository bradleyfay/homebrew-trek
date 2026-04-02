class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.65.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.65.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "b5b69248b27851dae76068628472d7d3042f8c9380c37debe3a534c7dd3f0ac8"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.65.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "5e158584baa23d583f5435a6708b5455b785b6c0ea57cf90f09382477aabd605"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
