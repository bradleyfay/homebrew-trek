class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.42.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.42.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "e63b21d11170cdef9cc6d8324fe6a021a697afa6938f702a687214e6b1fc17e5"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.42.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "1952a329b72cfea2ebfe9d1d7aa5439c863c39492059cad54577fc00f26bdac8"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
