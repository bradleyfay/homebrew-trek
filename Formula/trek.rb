class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.44.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.44.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "2c16454edd5fc768af763fe8c0f63ebe3dec6cf85d468804c07bc287aaa8de09"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.44.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "f29810cef9c46fd3a2ccc9b77edb01568de44ce4650fdfc7485a15c9a123f29e"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
