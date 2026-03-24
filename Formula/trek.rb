class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.38.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "2f564b6e6bf081386778ec484a1fd1e86f80c2cbc7c4dc6330e6c507dee0bf88"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.38.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "ba44e1de2330c1d675e44ec6707e0c305f9cfa551db7dc54acaa71ca90c9bd6f"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
