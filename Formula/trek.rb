class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.6.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "f5d5cb7e87e4c02f269217019158b3fbb8f7bf2c02ad8e03bcf3ff75d665e7ee"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.6.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "3b29a0c53cb549f76c34c74adb008cee375848aae30f180e123c55ef9892526a"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
