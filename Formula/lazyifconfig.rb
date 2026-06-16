class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.12"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.12/lazyifconfig-v0.2.12-x86_64-apple-darwin.tar.gz"
      sha256 "2e281a325fdbf451ad2dd899d78a01f042aeeed6eb668b51827e40a244c68462"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.12/lazyifconfig-v0.2.12-aarch64-apple-darwin.tar.gz"
      sha256 "bf4748ef76f3fce920cb86a88856589109301a1cb5e7594d8490a95e7ccb4555"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.12/lazyifconfig-v0.2.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f9297cb38ea8f2b12825c45f6d1f4aa1ed7f217b7afb49a78cd2cdcae1886fc1"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
