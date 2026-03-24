class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.52.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.52.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "34c348bd12449af38732e33bd2e8fd68c5bae5772fbb6c4a61e37437f517db48"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.52.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "d8003433d418b9557dccc28176800c5f946520da5c54f55ac2a84791e6b3ee10"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
