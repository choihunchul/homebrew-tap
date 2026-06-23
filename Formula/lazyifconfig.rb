class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.21"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.21/lazyifconfig-v0.2.21-x86_64-apple-darwin.tar.gz"
      sha256 "dd2983140fc284385676fc5db903f0a2d9950af413880b8dbda7d9b7ae88a1ae"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.21/lazyifconfig-v0.2.21-aarch64-apple-darwin.tar.gz"
      sha256 "71774760dc48fd49d11438e3b974ac2d90427985e4df1b2bf6da93dec23066dd"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.21/lazyifconfig-v0.2.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48649cf3906f301dabdecf17a605e6b0a12902362f389bbc9860d18be8517e37"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
