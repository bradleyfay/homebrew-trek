class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.18.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "34b45dc0f6c104c2e67f27adefcaa1ea1d9bf5b3c8fe30223fc6aa39f5118b4f"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.18.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "898a6427193f4d73501a1379f2cd7c919da3c2af74588b003f5ebd08ffd0b5ab"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
