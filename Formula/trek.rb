class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.61.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.61.1/trek-aarch64-apple-darwin.tar.gz"
      sha256 "68218808f2e6c24ac9176fd133562a919e0b471b6dc849e1a750d28691646d11"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.61.1/trek-x86_64-apple-darwin.tar.gz"
      sha256 "b9c1a495c3d0d0e77e551c7dbb93436e247c2cc623d21af511a20fc1240a56a5"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
