class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.54.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.54.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "17f5f5c80b9f74caced6c2b6242ddee0e62de4a41f8b71b4e7150072785d1394"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.54.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "e2a798b54b1d86347d90106da84ccb775cea4710abeb4dfa0dad12c5a9513182"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
