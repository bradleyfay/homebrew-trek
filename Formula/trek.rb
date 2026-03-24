class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.40.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "708a2da496b618c80fb89042dd0380c120278f3bd636786e5e3e00136c232baa"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.40.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "638cdd52aa771f3323b6cbd9c2559b761c095f73543ca3701e70e3d0b0f6e96b"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
