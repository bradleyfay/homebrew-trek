class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.13.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "632a2334759db051ad3d7b29c08e2fd0c1cf6c04464a0b99290a5e55b113ef65"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.13.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "b46246644bdeb998e1fd467cf7de08391cebf2231d441d04eb703d1599978e4a"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
