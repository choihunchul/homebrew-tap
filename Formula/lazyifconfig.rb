class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.10"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.10/lazyifconfig-v0.2.10-x86_64-apple-darwin.tar.gz"
      sha256 "630fdc777ddb182f9f7891a7a86d6a30743f88dbc91861a6f89e6049cb86884f"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.10/lazyifconfig-v0.2.10-aarch64-apple-darwin.tar.gz"
      sha256 "d95eb229bdc4ee60b42ab12f5d13bf4c01d9c73694b04acbbdc0a12fa622092c"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.10/lazyifconfig-v0.2.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "329b593a505d400e2c7d7d1bf3c32b3cdf028ba1bf33d0b55f2e8c5777b2b119"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
