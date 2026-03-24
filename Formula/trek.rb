class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.51.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.51.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "5923a96066e1d13d9915c5a754e4e81c7ce9056d9d3827bdbba33ad3eb788ab4"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.51.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "0617cfdbeee19153e0c5d524318352e0495e2fc92287728eb88456f00c75eb45"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
