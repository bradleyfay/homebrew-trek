class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.59.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.59.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "e0a05799e23fb3f78e122d31df4921a6d6a9e669ee9575e7799111ab00b88dc7"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.59.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "8614b5ed30e309b8ba95e52548b2c4182a26cfc9eb1cea52a20a47a5c5d00d0f"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
